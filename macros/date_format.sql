{#
Conversion function from date to string is differently named in different databases.

There are certain differences in the format string treatment:

  * Snowflake will pass unrecognized symbols as they were,
  * Whereas Databricks will fail on them.

It is thus recommended to only use the recognized formatting symbols in format expressions.
#}
{%- macro date_format() -%}
    {{ return(adapter.dispatch('date_format')()) }}
{%- endmacro -%}


{%- macro databricks__date_format() -%}
    {# https://docs.databricks.com/sql/language-manual/functions/date_format.html #}
    DATE_FORMAT
{%- endmacro -%}


{%- macro default__date_format() -%}
    {# https://docs.snowflake.com/en/sql-reference/functions/to_char.html #}
    TO_VARCHAR
{%- endmacro -%}
