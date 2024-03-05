# The name of this view in Looker is "Midyear Population"
view: midyear_population {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.midyear_population` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country Code" in Explore.

  dimension: country_code {
    type: string
    description: "Federal Information Processing Standard (FIPS) country/area code"
    sql: ${TABLE}.country_code ;;
  }

  dimension: country_name {
    type: string
    description: "Country or area name"
    sql: ${TABLE}.country_name ;;
  }

  dimension: midyear_population {
    type: number
    description: "Both sexes midyear population"
    sql: ${TABLE}.midyear_population ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_midyear_population {
    type: sum
    sql: ${midyear_population} ;;  }
  measure: average_midyear_population {
    type: average
    sql: ${midyear_population} ;;  }

  dimension: year {
    type: number
    description: "Year"
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
