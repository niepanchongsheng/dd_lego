view: uac_report_gas {
  sql_table_name: uac_report.uac_report_temp
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Day ;;
  }

  dimension: AccountName {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: CID {
    type: string
    sql: ${TABLE}.CID ;;
  }

  dimension: Store {
    type: string
    sql: ${TABLE}.Store ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.AppId ;;
  }

  dimension: CampaignName {
    type: string
    sql: ${TABLE}.CampaignName ;;
  }

  dimension: CampaignID {
    type: string
    sql: ${TABLE}.CampaignID ;;
  }

  dimension:  CampaignStatus{
    type: string
    sql: ${TABLE}.CampaignStatus ;;
  }

  dimension: AdGroupId {
    type: string
    sql: ${TABLE}.AdGroupId ;;
  }

  dimension: AdGroupStatus {
    type: string
    sql: ${TABLE}.AdGroupStatus ;;
  }

  dimension: AdGroupName {
    type: string
    sql: ${TABLE}.AdGroupName ;;
  }

  dimension: UACType {
    type: string
    sql: ${TABLE}.UACType ;;
  }

  dimension: TargetConversions {
    type: string
    sql: ${TABLE}.TargetConversions ;;
  }

  dimension: Currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: Language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: English {
    type: string
    sql: ${TABLE}.English ;;
  }

  dimension: AssetType {
    type: string
    sql: ${TABLE}.AssetType ;;
  }

  dimension: AdAsset {
    type: string
    sql: ${TABLE}.AdAsset ;;
  }

  dimension: FeedDataOriginal {
    type: string
    sql: ${TABLE}.FeedDataOriginal ;;
  }

  dimension: FeedData {
    type: string
    sql: ${TABLE}.FeedData ;;
  }

  dimension: PerformanceGrouping   {
    type: string
    sql: ${TABLE}.PerformanceGrouping  ;;
  }

  dimension: mediaid {
    type: string
    sql: ${TABLE}.mediaid ;;
  }

  dimension: sourceUrl {
    type: string
    sql: ${TABLE}.sourceUrl ;;
  }

  dimension: mediafilesize {
    type: string
    sql: ${TABLE}.mediafilesize ;;
  }

  dimension: LinkToCampaign {
    type: string
    sql: ${TABLE}.LinkToCampaign ;;
  }

  dimension: ImageSize {
    type: string
    sql: ${TABLE}.ImageSize ;;
  }

  dimension: VideoOrientation  {
    type: string
    sql: ${TABLE}.VideoOrientation   ;;
  }

  dimension: video_aspect_ratio  {
    type: string
    sql: ${TABLE}.video_aspect_ratio   ;;
  }

  dimension: RecommendedImage  {
    type: string
    sql: ${TABLE}.RecommendedImage   ;;
  }

  dimension: video_length_bucket   {
    type: string
    sql: ${TABLE}.video_length_bucket  ;;
  }

  dimension: ImageSizeType   {
    type: string
    sql: ${TABLE}.ImageSizeType  ;;
  }

  dimension: RefinedImageSize  {
    type: string
    sql: ${TABLE}.RefinedImageSize   ;;
  }

  dimension: Link  {
    type: string
    sql: ${TABLE}.Link   ;;
  }

  dimension: Status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: Network   {
    type: string
    sql: ${TABLE}.Network  ;;
  }

  dimension: Device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  measure: CampaignCost {
    type: number
    sql: sum(cast(${TABLE}.CampaignCost as float64)) ;;
    value_format_name: decimal_2
  }

  measure: clicks {
    label: "clicks"
    type: number
    sql: sum(cast(${TABLE}.clicks as int64)) ;;
    value_format_name: decimal_0
  }

  measure: impressions {
    label: "impressions"
    type: number
    sql: sum(cast(${TABLE}.impressions as int64)) ;;
    value_format_name: decimal_0
  }

  measure: cost  {
    label: "cost"
    type: number
    sql: sum(cast(${TABLE}.cost as float64))   ;;
    value_format_name: decimal_2
  }

  measure: CostNonInstalls   {
    label: "CostNonInstalls"
    type: number
    sql: sum(cast(${TABLE}.CostNonInstalls as float64))  ;;
    value_format_name: decimal_2
  }

  measure: conversions   {
    label: "conversions"
    type: number
    sql: sum(cast(${TABLE}.conversions as float64))  ;;
    value_format_name: decimal_2
  }

  measure: view_through_conversions    {
    label: "view_through_conversions"
    type: number
    sql: sum(cast(${TABLE}.view_through_conversions as int64))     ;;
    value_format_name: decimal_0
  }

  measure: installs    {
    label: "installs"
    type: number
    sql: sum(cast(${TABLE}.installs as float64))     ;;
    value_format_name: decimal_2
  }

  measure: installs_adjusted     {
    label: "installs_adjusted"
    type: number
    sql: sum(cast(${TABLE}.installs_adjusted as float64))    ;;
    value_format_name: decimal_2
  }

  measure: InApp     {
    label: "InApp"
    type: number
    sql: sum(cast(${TABLE}.InApp as float64))    ;;
    value_format_name: decimal_2
  }

  measure: inapps_adjusted       {
    label: "inapps_adjusted"
    type: number
    sql: sum(cast(${TABLE}.inapps_adjusted as float64))      ;;
    value_format_name: decimal_2
  }

  measure: engagements       {
    label: "engagements"
    type: number
    sql: sum(cast(${TABLE}.engagements as float64))      ;;
    value_format_name: decimal_2
  }

  measure: non_click_interactions    {
    label: "non_click_interactions"
    type: number
    sql: sum(cast(${TABLE}.non_click_interactions as int64))     ;;
    value_format_name: decimal_0
  }

  measure: conversion_value      {
    label: "conversion_value"
    type: number
    sql: sum(cast(${TABLE}.conversion_value as float64))       ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_7       {
    label: "InApp_day_7"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_7 as float64))      ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_5     {
    label: "InApp_day_5"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_5 as float64))    ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_3       {
    label: "InApp_day_3"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_3 as float64))      ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_1     {
    label: "InApp_day_1"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_1 as float64))    ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_0       {
    label: "InApp_day_0"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_0 as float64))      ;;
    value_format_name: decimal_2
  }

  measure: all_conversions       {
    label: "all_conversions"
    type: number
    sql: sum(cast(${TABLE}.all_conversions as float64))      ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_14      {
    label: "InApp_day_14"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_14 as float64))       ;;
    value_format_name: decimal_2
  }

  measure: InApp_day_30        {
    label: "InApp_day_30"
    type: number
    sql: sum(cast(${TABLE}.InApp_day_30 as float64))         ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_0        {
    label: "conversion_value_day_0"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_0 as float64))         ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_1        {
    label: "conversion_value_day_1"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_1 as float64))         ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_3          {
    label: "conversion_value_day_3"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_3 as float64))           ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_5 {
    label: "conversion_value_day_5"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_5 as float64));;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_7          {
    label: "conversion_value_day_7"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_7 as float64))           ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_14           {
    label: "conversion_value_day_14"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_14 as float64))          ;;
    value_format_name: decimal_2
  }

  measure: conversion_value_day_30           {
    label: "conversion_value_day_30"
    type: number
    sql: sum(cast(${TABLE}.conversion_value_day_30 as float64))          ;;
    value_format_name: decimal_2
  }


}
