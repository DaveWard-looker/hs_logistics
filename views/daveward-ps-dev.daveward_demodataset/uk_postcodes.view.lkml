# The name of this view in Looker is "Uk Postcodes"
view: uk_postcodes {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.uk_postcodes` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: easting {
    type: string
    sql: ${TABLE}.easting ;;
  }

  dimension: incode {
    type: string
    sql: ${TABLE}.incode ;;
  }

  dimension: latitude {
    hidden: yes
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: uk_postcode_location {
    type: location
    sql_longitude: ${longitude} ;;
    sql_latitude: ${latitude} ;;
  }

  dimension: northing {
    type: string
    sql: ${TABLE}.northing ;;
  }

  dimension: outcode {
    type: string
    sql: ${TABLE}.outcode ;;
  }

  dimension: positional_quality_indicator {
    type: string
    sql: ${TABLE}.positional_quality_indicator ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: postcode_area {
    type: string
    sql: ${TABLE}.postcode_area ;;
  }

  dimension: postcode_district {
    type: string
    sql: ${TABLE}.postcode_district ;;
  }

  dimension: postcode_fixed_width_eight {
    type: string
    sql: ${TABLE}.postcode_fixed_width_eight ;;
  }

  dimension: postcode_fixed_width_seven {
    type: string
    sql: ${TABLE}.postcode_fixed_width_seven ;;
  }

  dimension: postcode_no_space {
    type: string
    sql: ${TABLE}.postcode_no_space ;;
  }

  dimension: postcode_sector {
    type: string
    sql: ${TABLE}.postcode_sector ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }
  measure: count_of_postcodes {
    type: count
  }
}
