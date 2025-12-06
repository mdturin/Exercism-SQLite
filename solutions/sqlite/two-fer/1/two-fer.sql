-- Schema: CREATE TABLE "twofer" ("input" TEXT, "response" TEXT);
-- Task: update the twofer table and set the response based on the input.

-- select 'One for ' ||
--     case 
--         when name is null or trim(name) = '' then 'you' else name
--     end ||
--     ', one for me.'
-- from twofer;

-- update twofer
-- set input = null
-- where length(trim(input)) = 0;

-- update twofer
-- set response = 
--     case 
--         when input is not null then "One for " || input || ", one for me."
--         when input is null then "One for you, one for me."
--     end;


UPDATE twofer
SET response =
    CASE
        WHEN length(Input) >1 THEN "One for "|| INPUT ||", one for me."
        WHEN length(Input) <1 THEN "One for you, one for me."
    END;