# The name of this view in Looker is "Population Grid 1km"
view: population_grid_1km {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.population_grid_1km` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Alpha 3 Code" in Explore.

  dimension: alpha_3_code {
    type: string
    sql: ${TABLE}.alpha_3_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: geo_id {
    type: string
    sql: ${TABLE}.geo_id ;;
  }

  dimension: geog {
    type: string
    sql: ${TABLE}.geog ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_updated ;;
  }

  dimension: latitude_centroid {
    type: number
    value_format_name: id
    sql: ${TABLE}.latitude_centroid ;;
  }

  dimension: longitude_centroid {
    type: number
    value_format_name: id
    sql: ${TABLE}.longitude_centroid ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_population {
    type: sum
    sql: ${population} ;;  }
  measure: average_population {
    type: average
    sql: ${population} ;;  }
  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
