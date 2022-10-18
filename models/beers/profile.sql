-- depends_on: {{ ref("beers") }}
{% if execute %}
  {{ dbt_profiler.get_profile(relation=ref("beers")) }}
{% endif %}