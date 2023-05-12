{{ config(
    enabled=true,
    name="ibu range",
    tags=["custom_test"],
    description="test description",
    severity='warn',
    meta={"name":"ibu range", "tags": "[custom_test]"}
) }}

SELECT
    beer_id,
    ibu
FROM {{ ref('beers' )}}
WHERE ibu < 0 OR ibu > 140

