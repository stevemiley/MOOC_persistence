select "Course Structure from items_sections table";
SELECT
    items_sections.item_type,
    COUNT(items_sections.item_id) AS count
FROM
    items_sections
GROUP BY
    items_sections.item_type 
order by count desc;
