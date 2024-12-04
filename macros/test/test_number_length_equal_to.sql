{% test number_length_equal_to(model, column_name, number_length) %}
WITH CTE AS (
    SELECT 
        CAST({{ column_name }} AS TEXT) AS column_text
    FROM {{ model }}
    WHERE {{ column_name }} IS NOT NULL
)
SELECT * FROM CTE
WHERE LENGTH(column_text) != {{ number_length }}
{% endtest %}