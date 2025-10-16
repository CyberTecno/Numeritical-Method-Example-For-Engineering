% Ingredients
A = input('Enter your co-effcient matrix: ')
b = input('Enter source vector: ')
N = length(b); %no of unknowns
X = zeros(N,1);
Aug = [A b]
for j=1:N %for columns
    Aug(j,:) = Aug(j,:)/Aug(j,j)
    for i=1:N % for rows
        if i~=j
            m=Aug(i,j)
            Aug(i,:) = Aug(i,:)-m*Aug(j,:)
        end
    end
end