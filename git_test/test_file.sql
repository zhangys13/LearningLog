SELECT author_id,lpy_dt
       sum(if(dt="{{ds}}" and source='hot', report_cnt, 0)) hot_oneday_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='hot', report_cnt, 0)) hot_sevenday_report,
       sum(if(source='hot',report_cnt,0)) hot_thirtyday_report,
       sum(if(dt="{{ds}}" and source='follow', report_cnt, 0)) follow_oneday_report,
       sum(if((dt BETWEEN date_sub("2018-04-21", 10) AND "2018-04-21") and source='follow', report_cnt, 0)) follow_sevenday_report,
       sum(if(source='follow',report_cnt,0)) follow_thirtyday_report,
       sum(if(dt="{{ds}}" and source='nearby', report_cnt, 0)) nearby_oneday_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='nearby', report_cnt, 0)) nearby_sevenday_report,
       sum(if(source='nearby',report_cnt,0)) nearby_thirtyday_report,
       sum(if(dt="{{ds}}" and (source is null or source not in ('hot','follow','nearby')), report_cnt, 0)) other_oneday_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and (source is null or source not in ('hot','follow','nearby')), report_cnt, 0)) other_sevenday_report,
       sum(if((source is null or source not in ('hot','follow','nearby')),report_cnt,0)) other_thirtyday_report,

       sum(if(dt='2018-03-10' and source='hot', low_report_cnt, 0)) hot_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='hot', low_report_cnt, 0)) hot_sevenday_low_report,
       sum(if(source='hot',low_report_cnt,0)) hot_thirtyday_low_report,
       sum(if(dt='2018-03-10' and source='follow', low_report_cnt, 0)) follow_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='follow', low_report_cnt, 0)) follow_sevenday_low_report,
       sum(if(source='follow',low_report_cnt,0)) follow_thirtyday_low_report,
       sum(if(dt='2018-03-10' and source='nearby', low_report_cnt, 0)) nearby_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='nearby', low_report_cnt, 0)) nearby_sevenday_low_report,
       sum(if(source='nearby',low_report_cnt,0)) nearby_thirtyday_low_report,
       sum(if(dt='2018-03-10' and (source is null or source not in ('hot','follow','nearby')), low_report_cnt, 0)) other_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and (source is null or source not in ('hot','follow','nearby')), low_report_cnt, 0)) other_sevenday_low_report,

       sum(if(dt='2018-03-10' and source='hot', low_report_cnt, 0)) hot_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='hot', low_report_cnt, 0)) hot_sevenday_low_report,
       sum(if(source='hot',low_report_cnt,0)) hot_thirtyday_low_report,
       sum(if(dt='2018-03-10' and source='follow', low_report_cnt, 0)) follow_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='follow', low_report_cnt, 0)) follow_sevenday_low_report,
       sum(if(source='follow',low_report_cnt,0)) follow_thirtyday_low_report,
       sum(if(dt='2018-03-10' and source='nearby', low_report_cnt, 0)) nearby_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='nearby', low_report_cnt, 0)) nearby_sevenday_low_report,
       sum(if(source='nearby',low_report_cnt,0)) nearby_thirtyday_low_report,
       sum(if(dt='2018-03-10' and (source is null or source not in ('hot','follow','nearby')), low_report_cnt, 0)) other_oneday_low_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and (source is null or source not in ('hot','follow','nearby')), low_report_cnt, 0)) other_sevenday_low_report,
       sum(if((source is null or source not in ('hot','follow','nearby')),low_report_cnt,0)) other_thirtyday_low_report,

       sum(if(dt="{{ds}}" and source='hot', rumor_report_cnt, 0)) hot_oneday_rumor_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='hot', rumor_report_cnt, 0)) hot_sevenday_rumor_report,
       sum(if(source='hot',rumor_report_cnt,0)) hot_thirtyday_rumor_report,
       sum(if(dt="{{ds}}" and source='follow', rumor_report_cnt, 0)) follow_oneday_rumor_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='follow', rumor_report_cnt, 0)) follow_sevenday_rumor_report,
       sum(if(source='follow',rumor_report_cnt,0)) follow_thirtyday_rumor_report,
       sum(if(dt="{{ds}}" and source='nearby', rumor_report_cnt, 0)) nearby_oneday_rumor_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='nearby', rumor_report_cnt, 0)) nearby_sevenday_rumor_report,
       sum(if(source='nearby',rumor_report_cnt,0)) nearby_thirtyday_rumor_report,
       sum(if(dt="{{ds}}" and (source is null or source not in ('hot','follow','nearby')), rumor_report_cnt, 0)) other_oneday_rumor_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and (source is null or source not in ('hot','follow','nearby')), rumor_report_cnt, 0)) other_sevenday_rumor_report,
       sum(if((source is null or source not in ('hot','follow','nearby')),rumor_report_cnt,0)) other_thirtyday_rumor_report,


       sum(if(dt="{{ds}}" and source='hot', minor_improper_report_cnt, 0)) hot_oneday_minor_improper_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='hot', minor_improper_report_cnt, 0)) hot_sevenday_minor_improper_report,
       sum(if(source='hot',minor_improper_report_cnt,0)) hot_thirtyday_minor_improper_report,
       sum(if(dt="{{ds}}" and source='follow', minor_improper_report_cnt, 0)) follow_oneday_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='follow', minor_improper_report_cnt, 0)) follow_sevenday_minor_improper_report,
       sum(if(source='follow',minor_improper_report_cnt,0)) follow_thirtyday_minor_improper_report,
       sum(if(dt="{{ds}}" and source='nearby', minor_improper_report_cnt, 0)) nearby_oneday_minor_improper_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and source='nearby', minor_improper_report_cnt, 0)) nearby_sevenday_minor_improper_report,
       sum(if(source='nearby',minor_improper_report_cnt,0)) nearby_thirtyday_minor_improper_report,
       sum(if(dt="{{ds}}" and (source is null or source not in ('hot','follow','nearby')), minor_improper_report_cnt, 0)) other_oneday_minor_improper_report,
       sum(if((dt BETWEEN date_sub("{{ds}}", 6) AND "{{ds}}") and (source is null or source not in ('hot','follow','nearby')), minor_improper_report_cnt, 0)) other_sevenday_minor_improper_report,
       sum(if((source is null or source not in ('hot','follow','nearby')),minor_improper_report_cnt,0)) other_thirtyday_minor_improper_report     
FROM reco.author_report_aggr_daily
WHERE (dt BETWEEN date_sub("{{ds}}", 29) AND "{{ds}}")
GROUP BY author_id
 
