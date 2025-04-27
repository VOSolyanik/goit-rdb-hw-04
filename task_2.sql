USE LibraryManagement;

-- Fill in Authors
INSERT INTO authors (author_name)
VALUES ('Stephen King'), ('J.K. Rowling');

-- Fill in Genres
INSERT INTO genres (genre_name)
VALUES ('Horror'), ('Fantasy');

-- Fill in Books, ids taken as 1, 2 as author and genre ids is auto-increment
INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ('The Shining', 1977, 1, 1),
       ('Harry Potter and Secret chamber', 1997, 2, 2);
       
-- Fill in Users    
INSERT INTO users (username, email)
VALUES ('john_doe', 'john@example.com'), ('jane_smith', 'jane@example.com');

-- Fill in Borrowed Books, ids taken as 1, 2 as book and user ids is auto-increment
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2025-04-01', '2025-04-10'),
       (2, 2, '2025-04-05', NULL);