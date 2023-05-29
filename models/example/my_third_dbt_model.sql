{{ config(materialized='table') }}

with source_data as (

     SELECT 
id,
item_model,
item_type,
item_class,
item_class1,
branch_code,
outlet_code,
created_by,
created_date,
to_char(created_date, 'dd-MM-yyyy') tanggal_create,
last_updated_by,
last_updated_date,
enabled,
title_review,
description_review,
category,
is_archive,
is_draft,
jenis_kendaraan
FROM {{ source('postgre_source', 'item') }}

)

select *
from source_data