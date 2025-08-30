DROP TABLE IF EXISTS tickets;
CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    issue_type VARCHAR(50),
    priority VARCHAR(20),
    assigned_to VARCHAR(50),
    created_date DATE,
    closed_date DATE,
    status VARCHAR(20)
);

INSERT INTO tickets (issue_type, priority, assigned_to, created_date, closed_date, status) VALUES
('Password Reset', 'Low', 'Alice',   '2025-08-01', '2025-08-01', 'Closed'),
('Network Issue',  'High', 'Bob',     '2025-08-01', '2025-08-03', 'Closed'),
('Software Install','Medium','Charlie','2025-08-02', NULL,        'Open'),
('Hardware Failure','High', 'Alice',   '2025-08-02', '2025-08-05', 'Closed'),
('Email Issue',    'Low',  'Bob',      '2025-08-03', '2025-08-04', 'Closed'),
('VPN Access',     'Medium','Charlie', '2025-08-04', NULL,        'Open'),
('Password Reset', 'Low',  'Alice',    '2025-08-04', '2025-08-04', 'Closed'),
('Software Bug',   'High', 'Bob',      '2025-08-05', '2025-08-07', 'Closed'),
('Network Issue',  'Medium','Charlie', '2025-08-06', NULL,        'Open'),
('Hardware Failure','High','Alice',    '2025-08-06', NULL,        'Open');



