{% snapshot region_sales_snapshot %}
    {{ config(target_schema='snapshots', 
    unique_key='id', 
    strategy='check', 
    check_cols='all')
    }} --check_cols=['first_name', 'last_name', 'email', 'updated_at']

    SELECT * FROM {{ ref('svr_region_sales') }}  -- Data sumber

{% endsnapshot %}