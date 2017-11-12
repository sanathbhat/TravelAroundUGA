					delete from landmark;
					delete from buspath;
					delete from bustravel;

select * from landmark;
select * from walkpath;
select * from buspath;
select * from bustravel;
select * from bus;


select * from buspath bp join bustravel bt where bp.pathId = bt.pathId and bp.startsAt = 'GAC' and bt.busId = 'FH';

select * from buspath bp join bustravel bt where bp.pathId = bt.pathId and bp.endsAt = 'PLS' and bt.busId = 'FH';

select * from buspath bp join bustravel bt where bp.pathId = bt.pathId and bp.startsAt = 'GAC' and bt.busId = 'FH';

select * from buspath where startsAt='GAC';

select ls.name, le.name, bp.distance, bp.travelTime, b.name, b.startTime, b.endTime, 60*(tan((rand() - b.dmShift)*b.dmCompress) + b.dmAvg) as pathDelay
from bustravel bt, buspath bp, bus b, landmark ls, landmark le
where bt.pathId = bp.pathId 
and bt.busId = b.busId
and bp.startsAt = ls.landmarkId
and bp.endsAt = le.landmarkId;

select * from walkpath w, landmark ls, landmark le 
where w.startsAt = ls.landmarkId and w.endsAt = le.landmarkId;

