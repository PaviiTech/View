 SQL Views – LibraryDB
This project focuses on the creation and usage of SQL Views in a sample database called LibraryDB. A view is a virtual table based on a SQL SELECT statement. It helps simplify complex queries, enhance data abstraction, and improve security by exposing only necessary columns to the user.

🎯 Objective
Create reusable views to encapsulate complex joins and filters

Use views to simplify query writing and improve readability

Secure sensitive data by limiting access through views

🗃️ Schema Used: LibraryDB
Tables involved:

Author(AuthorID, Name, Country)

Publisher(PublisherID, Name, City)

Book(BookID, Title, Genre, AuthorID, PublisherID)

Member(MemberID, Name, Email, JoinDate)

Loan(LoanID, BookID, MemberID, LoanDate, ReturnDate)

