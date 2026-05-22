{% snapshot snap_orders_check %}

    {{
        config(
          
          strategy='check',
          unique_key='id',
          check_cols='all',
          invalidate_hard_deletes=True
        )
    }}

    select * from {{ source('datafeed_schema', 'raw_orders') }} limit 10

{% endsnapshot %}
