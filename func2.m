function z=func2(in)
pm1=in(:,1);
pm2=in(:,2);
pm3=in(:,3);
pm4=in(:,4);
pm5=in(:,5);
pm6=in(:,6);

%% ʵ��ֵ
%fig5
scx=[0.366972, 0.917431, 1.46789, 1.83486, 2.47706, 2.75229, 3.02752, 3.48624, 3.76147, 4.0367, 4.49541, 4.77064, 4.95413, 5.59633, 6.05505, 6.42202, 6.97248, 7.43119, 7.98165, 8.53211, 8.99083, 9.54128, 10, 10.5505, 11.0092, 11.4679, 12.1101, 12.5688, 12.9358, 13.578, 14.0367, 14.4954, 14.9541, 15.5963, 16.055, 16.5138, 17.0642, 17.5229, 17.9817, 18.9908, 19.5413, 20, 20.6422, 21.1009, 21.6514, 22.0183, 22.5688, 22.9358, 23.4862, 24.0367, 24.4954, 24.9541, 25.5046, 26.055, 26.5138, 26.9725, 27.5229];
scy=[1.0061, 1.28743, 1.45043, 1.59854, 1.74678, 1.82088, 1.85061, 1.93959, 1.96931, 2.02862, 2.10281, 2.13253, 2.177, 2.25128, 2.31068, 2.35524, 2.41468, 2.47408, 2.51873, 2.53379, 2.5636, 2.57867, 2.59369, 2.62355, 2.62377, 2.65358, 2.6539, 2.66892, 2.68389, 2.7138, 2.72881, 2.74383, 2.74406, 2.75917, 2.77419, 2.78921, 2.80427, 2.81929, 2.83431, 2.8496, 2.87946, 2.87968, 2.90959, 2.92461, 2.95446, 2.96944, 2.9845, 3.02906, 3.04413, 3.08878, 3.089, 3.10402, 3.13388, 3.14894, 3.16396, 3.17898, 3.19404];
X=scx';
Y=scy';

%fig3_s=2
% f8tx=10.^[0.996961, 1.30626, 1.71058, 1.97204, 2.44757, 2.70904, 3.01791, 3.39778, 3.68262, 4.01509, 4.41833, 4.72699, 5.01183, 5.39191, 5.70057, 6.15143, 6.69753, 7.19665];
% f8ty=[1.27623, 1.37096, 1.55722, 1.74132, 2.01873, 2.20284, 2.47775, 2.9339, 3.29854, 3.66389, 4.30058, 4.66557, 5.03021, 5.39627, 5.76127, 6.39867, 7.0375, 7.40536];
% X=f8tx';
% Y=f8ty';

%fig3_s=4
% f9tx=10.^[1.0479, 1.59281, 1.99102, 2.32635, 2.70359, 2.99701, 3.33234, 3.66766, 4.00299, 4.31737, 4.65269, 5.00898, 5.3024, 5.63772, 5.99401, 6.32934,6.64371];
% f9ty=[2.7027, 3.24324, 3.64865, 4.18919, 4.86486, 5.54054, 6.48649, 7.2973, 8.37838, 9.45946, 10.6757, 11.6216, 12.5676, 13.2432, 14.1892, 14.8649, 15.5405];
% X=f9tx';
% Y=f9ty';

%fig3_s=6
% f10tx=10.^[0.962963, 1.25926, 1.51852, 1.90741, 2.22222, 2.48148, 2.7037, 3.01852, 3.2963, 3.66667, 4, 4.2963, 4.64815, 4.98148, 5.2963, 5.62963, 5.77778, 6.09259];
% f10ty=[4.11184, 4.76974, 5.42763, 6.25, 6.74342, 7.89474, 8.55263, 10.0329, 11.1842, 13.1579, 15.2961, 16.9408, 19.0789, 21.0526, 22.3684, 23.6842, 24.6711, 25.8224];
% X=f10tx';
% Y=f10ty';

%fig2_s=2_1
% f4t1x=10.^[0.691406, 1.00781, 1.25391, 1.5, 1.74609, 1.99219, 2.21484, 2.46094];
% f4t1y=1000*[0.000648565, 0.000709629, 0.000770778, 0.000839157, 0.000914764, 0.000993985, 0.00107685, 0.00118137];
% X=f4t1x';
% Y=f4t1y';

%fig2_s=4_1
% f5t1x=10.^[0.694118, 1, 1.24706, 1.50588, 1.75294, 2, 2.24706, 2.47059];
% f5t1y=1000*[0.000694434, 0.00077028, 0.000846063, 0.000926055, 0.00103121, 0.00113636, 0.0012625, 0.00140119];
% X=f5t1x';
% Y=f5t1y';

%fig2_s=6_1
% f6t1x=10.^[0.697635, 1.01689, 1.2652, 1.51351, 1.76182, 2.01014, 2.25845, 2.48311];
% f6t1y=1000*[0.000748329, 0.000843586, 0.000929371, 0.00102951, 0.00113922, 0.00126807, 0.00141127, 0.00155928];
% X=f6t1x';
% Y=f6t1y';
%% ���Ż�����

nx=length(in);
z=zeros(nx,1);
%����ÿ������������
for i=1:nx
    if( pm3(i) > pm2(i) || pm3(i) >= pm1(i) || pm2(i) >= pm1(i) )
        z(i,:) = inf;% Ϊ��֤����֮��Ĵ�С��ϵ���������������Ҫ�����趨������޴�
    else
        y = zeros(length(X),1);
        for j=1:length(X)
            y(j) =J_func(X(j),pm1(i),pm2(i),pm3(i),pm4(i),pm5(i),pm6(i)) ;% ��ÿ��������X(j)����ģ��ֵ
        end
        z(i,:)=sqrt(sum(( (Y - y)./y ).^2));% ��i�������Ӧ�������������
    end
end