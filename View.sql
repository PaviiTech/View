USE LibraryDB;
CREATE VIEW BookDetails AS
SELECT 
  b.BookID, b.Title, b.Genre, 
  a.Name AS Author, 
  p.Name AS Publisher
FROM Book b
JOIN Author a ON b.AuthorID = a.AuthorID
JOIN Publisher p ON b.PublisherID = p.PublisherID;


CREATE VIEW MemberLoanStats AS
SELECT 
  m.MemberID, m.Name, COUNT(l.LoanID) AS TotalLoans
FROM Member m
LEFT JOIN Loan l ON m.MemberID = l.MemberID
GROUP BY m.MemberID;

CREATE VIEW PublicMemberList AS
SELECT MemberID, Name, JoinDate
FROM Member;

CREATE VIEW ActiveLoans AS
SELECT 
  l.LoanID, b.Title, m.Name AS Borrower, l.LoanDate
FROM Loan l
JOIN Book b ON l.BookID = b.BookID
JOIN Member m ON l.MemberID = m.MemberID
WHERE l.ReturnDate IS NULL;