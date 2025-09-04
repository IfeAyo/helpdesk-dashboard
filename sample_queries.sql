-- Tickets by Issue Type
SELECT issue_type, COUNT(*) AS total_tickets
FROM tickets
GROUP BY issue_type;

-- Average Resolution Days (Closed only)
SELECT AVG(closed_date - created_date) AS avg_resolution_days
FROM tickets
WHERE status = 'Closed';

-- Open Tickets by Technician
SELECT assigned_to, COUNT(*) AS open_tickets
FROM tickets
WHERE status = 'Open'
GROUP BY assigned_to;

-- Open vs Closed over time
SELECT created_date, status, COUNT(*) AS total
FROM tickets
GROUP BY created_date, status
ORDER BY created_date;

