# The name of this view in Looker is "Country Names Area"
view: country_names_area {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.country_names_area` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country Area" in Explore.

  dimension: country_area {
    type: number
    description: "Area in square kilometers"
    sql: ${TABLE}.country_area ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_country_area {
    type: sum
    sql: ${country_area} ;;  }
  measure: average_country_area {
    type: average
    sql: ${country_area} ;;  }

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
  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
