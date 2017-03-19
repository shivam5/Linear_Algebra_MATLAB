function [X] = proj( u,v )

X=(dot(u,v)/dot(u,u))*u;

end

