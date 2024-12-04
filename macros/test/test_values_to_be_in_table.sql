{% test values_to_be_in_other_table(model, column_name, compare_model, compare_column_name) %}
SELECT DISTINCT({{ column_name }})
FROM {{ model }}
WHERE {{ column_name }} NOT IN (
    SELECT {{ compare_column_name }}
    FROM {{ compare_model }}
)
{% endtest %}