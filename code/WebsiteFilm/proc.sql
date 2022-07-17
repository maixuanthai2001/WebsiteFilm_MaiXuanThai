create proc sp_selectUsersLikedVideoByVideoHref(@videoHref varchar(50))
as begin
select
		u.id, u.username, u.[password], u.email, u.isAdmin, u.isActive
	from
		 [user] u inner join history h on u.id = h.userid
			inner join video v on h.videoid = v.id
	where
		v.href = @videoHref and u.isActive = 1 and v.isActive = 1 and h.isLike = 1
end