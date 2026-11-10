# Spain World Cup 2026: Squad Database

A MySQL database containing the Spain national team squad for the 2026 FIFA World Cup, with player profiles and tournament performance stats in a single table, ready for querying and analysis.

## 📦 What's Inside

`spain_wc_26.sql` creates the database `spain_world_cup_26` and one table, `squad_hub`, populated with 26 players (3 GKs, defenders, midfielders, forwards).

### Schema: `squad_hub`

| Column | Type | Description |
|---|---|---|
| `ShirtNo` | INT (PK) | Squad shirt number |
| `PlayerName` | VARCHAR(50) | Player's full name |
| `PlayerPosition` | VARCHAR(3) | GK, LB, CB, RB, CDM, CM, LM, CAM, LW, RW, ST |
| `Foot` | VARCHAR(5) | Preferred foot |
| `Club` | VARCHAR(50) | Current club |
| `Age` / `DOB` | INT / VARCHAR | Age and date of birth |
| `Height` | VARCHAR(6) | Height in cm |
| `Apps`, `AppsStart`, `AppsSub` | INT | Appearances, starts, substitute appearances |
| `MinutesPlayed` | INT | Total minutes played |
| `Passes`, `Tackle`, `Shots` | INT | Playing stats |
| `Goals`, `Assist` | INT | Attacking contributions |
| `Saves`, `Cleansheet` | INT | Goalkeeping stats |
| `Foul`, `YellowCard`, `RedCard` | INT | Discipline |
| `POTM` | INT | Player of the Match awards |
| `Rating` | VARCHAR(20) | Average match rating |

> The script also drops the unused columns `MarketValue`, `OwnGoal`, and `TotalRun` after creating the table.

## 🚀 Getting Started

**Requirements:** MySQL 8.0+ (or MariaDB)

```bash
# Clone the repo
git clone https://github.com/<your-username>/spain-world-cup-2026-sql.git
cd spain-world-cup-2026-sql

# Run the script
mysql -u root -p < spain_wc_26.sql
```

Then:

```sql
USE spain_world_cup_26;
SELECT * FROM squad_hub;
```

## 🔍 Example Queries

**Top rated outfield players (min. 300 minutes):**
```sql
SELECT PlayerName, PlayerPosition, Rating
FROM squad_hub
WHERE PlayerPosition <> 'GK' AND MinutesPlayed >= 300
ORDER BY CAST(Rating AS DECIMAL(4,2)) DESC;
```

**Goal contributions (goals + assists):**
```sql
SELECT PlayerName, Goals, Assist, (Goals + Assist) AS Contributions
FROM squad_hub
ORDER BY Contributions DESC
LIMIT 5;
```

**Players per club:**
```sql
SELECT Club, COUNT(*) AS Players
FROM squad_hub
GROUP BY Club
ORDER BY Players DESC;
```

**Most disciplined vs. most fouled-out:**
```sql
SELECT PlayerName, Foul, YellowCard, RedCard
FROM squad_hub
ORDER BY Foul DESC;
```

## 🛠 Skills Demonstrated

`CREATE DATABASE` · `CREATE TABLE` · primary keys · `ALTER TABLE ... DROP COLUMN` · `UPDATE` · bulk `INSERT` · aggregation & sorting

## 📌 Notes

- `DOB`, `Height`, and `Rating` are stored as text; use `CAST` for numeric operations.
- Data is for educational and portfolio purposes.

## 📄 License

MIT: free to use, modify, and share.
