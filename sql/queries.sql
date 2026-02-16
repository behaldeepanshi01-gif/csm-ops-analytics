-- KPI SQL for sample_pipeline
-- Same-day reply rate
SELECT
  ROUND(AVG(CASE WHEN first_reply_minutes <= 1440 THEN 1 ELSE 0 END)*100, 2) AS same_day_reply_pct
FROM sample_pipeline;

-- Missed follow-ups percentage
SELECT
  ROUND(AVG(CASE WHEN followup_missed = 1 THEN 1 ELSE 0 END)*100, 2) AS missed_followups_pct
FROM sample_pipeline;

-- Meeting show rate
SELECT
  ROUND(SUM(meeting_show)*1.0 / NULLIF(SUM(meeting_set),0) * 100, 2) AS meeting_show_rate_pct
FROM sample_pipeline;

-- Funnel by segment
SELECT segment,
       SUM(1) AS leads,
       SUM(meeting_set) AS meetings,
       SUM(meeting_show) AS shows,
       SUM(proposal_sent) AS proposals,
       SUM(won) AS wins
FROM sample_pipeline
GROUP BY segment
ORDER BY leads DESC;

-- Source performance
SELECT source,
       ROUND(AVG(CASE WHEN first_reply_minutes <= 1440 THEN 1 ELSE 0 END)*100,2) AS same_day_reply_pct,
       ROUND(AVG(followup_missed)*100,2) AS missed_followups_pct,
       ROUND(SUM(won)*100.0 / NULLIF(SUM(1),0),2) AS win_rate_pct
FROM sample_pipeline
GROUP BY source
ORDER BY win_rate_pct DESC;
