# The name of this view in Looker is "House"
view: house {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.house` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Candidate" in Explore.

  dimension: candidate {
    type: string
    sql: ${TABLE}.candidate ;;
  }

  dimension: candidatevotes {
    type: number
    sql: ${TABLE}.candidatevotes ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_candidatevotes {
    type: sum
    sql: ${candidatevotes} ;;  }
  measure: average_candidatevotes {
    type: average
    sql: ${candidatevotes} ;;  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.mode ;;
  }

  dimension: office {
    type: string
    sql: ${TABLE}.office ;;
  }

  dimension: party {
    type: string
    sql: ${TABLE}.party ;;
  }

  dimension: runoff {
    type: string
    sql: ${TABLE}.runoff ;;
  }

  dimension: special {
    type: string
    sql: ${TABLE}.special ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}.stage ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_cen {
    type: string
    sql: ${TABLE}.state_cen ;;
  }

  dimension: state_fips {
    type: string
    sql: ${TABLE}.state_fips ;;
  }

  dimension: state_ic {
    type: string
    sql: ${TABLE}.state_ic ;;
  }

  dimension: state_po {
    type: string
    sql: ${TABLE}.state_po ;;
  }

  dimension: totalvotes {
    type: number
    sql: ${TABLE}.totalvotes ;;
  }

  dimension: unofficial {
    type: string
    sql: ${TABLE}.unofficial ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: writein {
    type: string
    sql: ${TABLE}.writein ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
  }
}
