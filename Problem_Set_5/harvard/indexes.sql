-- Easiest way to do this is to create all indexes and run EXPLAIN QUERY PLAN on each given search
-- then delete those that has not been used.
-- Comment on right tells which query uses this index.
CREATE INDEX "enrollments.student" ON "enrollments" ("student_id"); -- 1, 6
CREATE INDEX "enrollments.course" ON "enrollments" ("course_id"); -- 2, 3

CREATE INDEX "courses.semester" ON "courses" ("semester"); -- 3, 4, 5, 7
CREATE INDEX "courses.number" ON "courses" ("number"); -- 2

CREATE INDEX "satisfies.course_id" ON "satisfies" ("course_id"); -- 5, 6
