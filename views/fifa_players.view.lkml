# The name of this view in Looker is "Fifa Players"
view: fifa_players {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `daveward-ps-dev.daveward_demodataset.fifa_players` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "A W" in Explore.

  dimension: a_w {
    type: string
    sql: ${TABLE}.A_W ;;
  }

  dimension: acceleration {
    type: number
    sql: ${TABLE}.Acceleration ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: aggression {
    type: number
    sql: ${TABLE}.Aggression ;;
  }

  dimension: agility {
    type: number
    sql: ${TABLE}.Agility ;;
  }

  dimension: attacking {
    type: number
    sql: ${TABLE}.Attacking ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.Balance ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_balance {
    type: sum
    sql: ${balance} ;;  }
  measure: average_balance {
    type: average
    sql: ${balance} ;;  }

  dimension: ball_control {
    type: number
    sql: ${TABLE}.Ball_Control ;;
  }

  dimension: base_stats {
    type: number
    sql: ${TABLE}.Base_Stats ;;
  }

  dimension: bov {
    type: number
    sql: ${TABLE}.BOV ;;
  }

  dimension: bp {
    type: string
    sql: ${TABLE}.BP ;;
  }

  dimension: cam {
    type: string
    sql: ${TABLE}.CAM ;;
  }

  dimension: cb {
    type: string
    sql: ${TABLE}.CB ;;
  }

  dimension: cdm {
    type: string
    sql: ${TABLE}.CDM ;;
  }

  dimension: cf {
    type: string
    sql: ${TABLE}.CF ;;
  }

  dimension: club {
    type: string
    sql: ${TABLE}.Club ;;
  }

  dimension: club_logo {
    type: string
    sql: ${TABLE}.Club_Logo ;;
  }

  dimension: cm {
    type: string
    sql: ${TABLE}.CM ;;
  }

  dimension: composure {
    type: number
    sql: ${TABLE}.Composure ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.Contract ;;
  }

  dimension: crossing {
    type: number
    sql: ${TABLE}.Crossing ;;
  }

  dimension: curve {
    type: number
    sql: ${TABLE}.Curve ;;
  }

  dimension: d_w {
    type: string
    sql: ${TABLE}.D_W ;;
  }

  dimension: def {
    type: number
    sql: ${TABLE}.DEF ;;
  }

  dimension: defending {
    type: number
    sql: ${TABLE}.Defending ;;
  }

  dimension: dri {
    type: number
    sql: ${TABLE}.DRI ;;
  }

  dimension: dribbling {
    type: number
    sql: ${TABLE}.Dribbling ;;
  }

  dimension: finishing {
    type: number
    sql: ${TABLE}.Finishing ;;
  }

  dimension: fk_accuracy {
    type: number
    sql: ${TABLE}.FK_Accuracy ;;
  }

  dimension: flag_photo {
    type: string
    sql: ${TABLE}.Flag_Photo ;;
  }

  dimension: foot {
    type: string
    sql: ${TABLE}.foot ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: gk {
    type: string
    sql: ${TABLE}.GK ;;
  }

  dimension: gk_diving {
    type: number
    sql: ${TABLE}.GK_Diving ;;
  }

  dimension: gk_handling {
    type: number
    sql: ${TABLE}.GK_Handling ;;
  }

  dimension: gk_kicking {
    type: number
    sql: ${TABLE}.GK_Kicking ;;
  }

  dimension: gk_positioning {
    type: number
    sql: ${TABLE}.GK_Positioning ;;
  }

  dimension: gk_reflexes {
    type: number
    sql: ${TABLE}.GK_Reflexes ;;
  }

  dimension: goalkeeping {
    type: number
    sql: ${TABLE}.Goalkeeping ;;
  }

  dimension: growth {
    type: number
    sql: ${TABLE}.Growth ;;
  }

  dimension: heading_accuracy {
    type: number
    sql: ${TABLE}.Heading_Accuracy ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.Height ;;
  }

  dimension: hits {
    type: string
    sql: ${TABLE}.Hits ;;
  }

  dimension: interceptions {
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  dimension: ir {
    type: string
    sql: ${TABLE}.IR ;;
  }

  dimension: joined {
    type: string
    sql: ${TABLE}.Joined ;;
  }

  dimension: jumping {
    type: number
    sql: ${TABLE}.Jumping ;;
  }

  dimension: lam {
    type: string
    sql: ${TABLE}.LAM ;;
  }

  dimension: lb {
    type: string
    sql: ${TABLE}.LB ;;
  }

  dimension: lcb {
    type: string
    sql: ${TABLE}.LCB ;;
  }

  dimension: lcm {
    type: string
    sql: ${TABLE}.LCM ;;
  }

  dimension: ldm {
    type: string
    sql: ${TABLE}.LDM ;;
  }

  dimension: lf {
    type: string
    sql: ${TABLE}.LF ;;
  }

  dimension: lm {
    type: string
    sql: ${TABLE}.LM ;;
  }

  dimension: loan_date_end {
    type: string
    sql: ${TABLE}.Loan_Date_End ;;
  }

  dimension: long_passing {
    type: number
    sql: ${TABLE}.Long_Passing ;;
  }

  dimension: long_shots {
    type: number
    sql: ${TABLE}.Long_Shots ;;
  }

  dimension: ls {
    type: string
    sql: ${TABLE}.LS ;;
  }

  dimension: lw {
    type: string
    sql: ${TABLE}.LW ;;
  }

  dimension: lwb {
    type: string
    sql: ${TABLE}.LWB ;;
  }

  dimension: marking {
    type: number
    sql: ${TABLE}.Marking ;;
  }

  dimension: mentality {
    type: number
    sql: ${TABLE}.Mentality ;;
  }

  dimension: movement {
    type: number
    sql: ${TABLE}.Movement ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  dimension: ova {
    type: number
    sql: ${TABLE}.OVA ;;
  }

  dimension: pac {
    type: number
    sql: ${TABLE}.PAC ;;
  }

  dimension: pas {
    type: number
    sql: ${TABLE}.PAS ;;
  }

  dimension: penalties {
    type: number
    sql: ${TABLE}.Penalties ;;
  }

  dimension: phy {
    type: number
    sql: ${TABLE}.PHY ;;
  }

  dimension: player_photo {
    type: string
    sql: ${TABLE}.Player_Photo ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: positioning {
    type: number
    sql: ${TABLE}.Positioning ;;
  }

  dimension: pot {
    type: number
    sql: ${TABLE}.POT ;;
  }

  dimension: power {
    type: number
    sql: ${TABLE}.Power ;;
  }

  dimension: ram {
    type: string
    sql: ${TABLE}.RAM ;;
  }

  dimension: rb {
    type: string
    sql: ${TABLE}.RB ;;
  }

  dimension: rcb {
    type: string
    sql: ${TABLE}.RCB ;;
  }

  dimension: rcm {
    type: string
    sql: ${TABLE}.RCM ;;
  }

  dimension: rdm {
    type: string
    sql: ${TABLE}.RDM ;;
  }

  dimension: reactions {
    type: number
    sql: ${TABLE}.Reactions ;;
  }

  dimension: release_clause {
    type: string
    sql: ${TABLE}.Release_Clause ;;
  }

  dimension: rf {
    type: string
    sql: ${TABLE}.RF ;;
  }

  dimension: rm {
    type: string
    sql: ${TABLE}.RM ;;
  }

  dimension: rs {
    type: string
    sql: ${TABLE}.RS ;;
  }

  dimension: rw {
    type: string
    sql: ${TABLE}.RW ;;
  }

  dimension: rwb {
    type: string
    sql: ${TABLE}.RWB ;;
  }

  dimension: sho {
    type: number
    sql: ${TABLE}.SHO ;;
  }

  dimension: short_passing {
    type: number
    sql: ${TABLE}.Short_Passing ;;
  }

  dimension: shot_power {
    type: number
    sql: ${TABLE}.Shot_Power ;;
  }

  dimension: skill {
    type: number
    sql: ${TABLE}.Skill ;;
  }

  dimension: sliding_tackle {
    type: number
    sql: ${TABLE}.Sliding_Tackle ;;
  }

  dimension: sm {
    type: string
    sql: ${TABLE}.SM ;;
  }

  dimension: sprint_speed {
    type: number
    sql: ${TABLE}.Sprint_Speed ;;
  }

  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  dimension: stamina {
    type: number
    sql: ${TABLE}.Stamina ;;
  }

  dimension: standing_tackle {
    type: number
    sql: ${TABLE}.Standing_Tackle ;;
  }

  dimension: strength {
    type: number
    sql: ${TABLE}.Strength ;;
  }

  dimension: team___contract {
    type: string
    sql: ${TABLE}.Team___Contract ;;
  }

  dimension: total_stats {
    type: number
    sql: ${TABLE}.Total_Stats ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: vision {
    type: number
    sql: ${TABLE}.Vision ;;
  }

  dimension: volleys {
    type: number
    sql: ${TABLE}.Volleys ;;
  }

  dimension: w_f {
    type: string
    sql: ${TABLE}.W_F ;;
  }

  dimension: wage {
    type: string
    sql: ${TABLE}.Wage ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.Weight ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
