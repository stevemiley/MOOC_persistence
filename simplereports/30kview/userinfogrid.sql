select "User info Grid ";
SELECT
    access_groups.name,
    users.deleted,
    COUNT(users.anon_user_id)
FROM
    users
INNER JOIN
    access_groups
ON
    (
        users.access_group_id = access_groups.id)
GROUP BY
    access_groups.name,
    users.deleted ;
