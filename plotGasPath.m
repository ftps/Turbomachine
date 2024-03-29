function [] = plotGasPath(R1, R2, l1, l2, s1, s2)
	
	x = zeros(5, 1);
	r = zeros(5, 1);
	
	figure();
	for i = 1:2:(length(R1)-1)
		if i == 1
			x(1) = 0;
		else
			x(1) = x(4) + s2(floor((i-1)/2));
		end
		x(2) = x(1);
		x(3) = x(1) + l1(floor((i-1)/2)+1);
		x(4) = x(3);
		x(5) = x(1);
		
		r(1) = R2(i);
		r(2) = R1(i);
		r(3) = R1(i+1);
		r(4) = R2(i+1);
		r(5) = R2(i);
		plot(x, r, 'r');
		hold on;
		plot(x, r, 'ro', 'markerfacecolor', 'r');
		
		x(1) = x(3) + s1(floor((i-1)/2)+1);
		x(2) = x(1);
		x(3) = x(1) + l2(floor((i-1)/2)+1);
		x(4) = x(3);
		x(5) = x(1);
		
		r(1) = R2(i+1);
		r(2) = R1(i+1);
		r(3) = R1(i+2);
		r(4) = R2(i+2);
		r(5) = R2(i+1);
		plot(x, r, 'b');
		plot(x, r, 'bo', 'markerfacecolor', 'b');
	end
	daspect([1 0.5 1]);
	%grid on;
	hold off;

end