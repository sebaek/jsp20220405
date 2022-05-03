USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT DISTINCT b.id, b.title 
FROM Board b JOIN Reply r ON b.id = r.board_id;
-- SUBQUERY
SELECT id, title
FROM Board
WHERE id IN   -- (13, 15, 20, 21);
            (SELECT board_id FROM Reply);

-- 댓글이 없는 게시물
-- JOIN
SELECT b.id, b.title 
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id IS NULL;

-- SUBQUERY
SELECT id, title
FROM Board
WHERE id NOT IN  -- (13, 15, 20, 21);
				(SELECT board_id FROM Reply);
                
                




