create
procedure		factorial
				(
					@i				int
				)
as
begin;
	
	if @i < 0
		return null;
	else if @i in (0, 1)
		return 1;

	declare		@count		int,
				@result		int
	;
	set @count = 2;
	set @result = 1;

	while @i >= @count
	begin;
		set @result = @result*@count;
		set @count = @count + 1;
	end;

	return @result;
end;


declare		@answer			int,
			@i				int
;
set @i = 1;

while @i < 10
begin;
	exec  @answer = factorial @i;
	exec p_print @answer;
	set @i = @i + 1;
end;
