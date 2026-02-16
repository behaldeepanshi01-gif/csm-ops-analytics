# CSM Ops Analytics

> Customer Success operations toolkit — SLA tracking, sales funnel analysis, and QBR templates with SQL queries for pipeline health monitoring.

![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat&logo=microsoftexcel&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat&logo=powerbi&logoColor=black)

## Business Context

Customer Success teams need real-time visibility into response SLAs, pipeline funnel health, and value realization metrics. This project provides a ready-to-use analytics framework with SQL queries, sample data, and QBR/Success Plan templates — designed to be demonstrated in CS Ops or Strategic CSM interviews.

## KPIs Tracked

| KPI | Query | What It Measures |
|-----|-------|-----------------|
| Same-Day Reply Rate | `first_reply_minutes <= 1440` | % of leads contacted within 24 hours |
| Missed Follow-Ups | `followup_missed = 1` | % of dropped leads |
| Meeting Show Rate | `shows / meetings` | Prospect engagement quality |
| Win Rate | `wins / leads` | Pipeline conversion efficiency |
| Cycle Time | `created to proposal` | Sales velocity indicator |

## Project Structure

```
csm-ops-analytics/
├── data/
│   └── sample_pipeline.csv               # 15-row pipeline dataset
├── sql/
│   └── queries.sql                       # 5 KPI queries (SLA, funnel, segmentation)
├── docs/
│   ├── QBR.md                            # QBR-style summary template
│   └── SuccessPlan.md                    # Customer success plan template
└── README.md
```

## How to Use

1. Open `data/sample_pipeline.csv` in Power BI, Tableau, or Excel
2. Run SQL queries from `sql/queries.sql` against the dataset
3. Use `docs/QBR.md` as a talk track for QBR presentations
4. Customize `docs/SuccessPlan.md` for customer onboarding

## Author

**Deepanshi Behal** | [LinkedIn](https://linkedin.com/in/bdeepanshi) | [GitHub](https://github.com/behaldeepanshi01-gif)
