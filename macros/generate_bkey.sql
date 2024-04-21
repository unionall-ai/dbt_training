{% macro generate_bkey(columns) -%}
  {%- set coalesced_columns = [] -%}
  {%- for column in columns -%}
    {%- set coalesced_column = "coalesce(lower(cast(" ~ column ~ " as text)), '')" -%}
    {%- do coalesced_columns.append(coalesced_column) -%}
  {%- endfor -%}
  
  {{- coalesced_columns | join(" || '_' || ") -}}
{%- endmacro %}
