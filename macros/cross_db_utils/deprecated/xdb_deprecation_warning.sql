{% macro xdb_deprecation_warning_without_replacement(macro, package, model) %}
    {%- set error_message = "Warning: the `" ~ macro ~"` macro is deprecated and will be removed in a future version of the package, once equivalent functionality is implemented in dbt Core. The " ~ package ~ "." ~ model ~ " model triggered this warning." -%}
    {%- do exceptions.warn(error_message) -%}
{% endmacro %}