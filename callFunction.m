function [ func ] = callFunction( funcNum )

funcs(1).name = 'Layeb01';           funcs(1).lowerlimit = -100;       funcs(1).upperlimit = 100;       funcs(1).dim = 30;
funcs(2).name = 'Layeb02';           funcs(2).lowerlimit = -100;       funcs(2).upperlimit = 100;       funcs(2).dim = 30;
funcs(3).name = 'Layeb03';           funcs(3).lowerlimit = -10;        funcs(3).upperlimit = 10;        funcs(3).dim = 30;
funcs(4).name = 'Layeb04';           funcs(4).lowerlimit = -10;        funcs(4).upperlimit = 10;        funcs(4).dim = 30;
funcs(5).name = 'Layeb05';           funcs(5).lowerlimit = -10;        funcs(5).upperlimit = 10;        funcs(5).dim = 30;
funcs(6).name = 'Layeb06';           funcs(6).lowerlimit = -10;        funcs(6).upperlimit = 10;        funcs(6).dim = 30;
funcs(7).name = 'Layeb07';           funcs(7).lowerlimit = -10;        funcs(7).upperlimit = 10;        funcs(7).dim = 30;
funcs(8).name = 'Layeb08';           funcs(8).lowerlimit = -10;        funcs(8).upperlimit = 10;        funcs(8).dim = 30;
funcs(9).name = 'Layeb09';           funcs(9).lowerlimit = -10;        funcs(9).upperlimit = 10;        funcs(9).dim = 30;
funcs(10).name = 'Layeb10';          funcs(10).lowerlimit = -100;      funcs(10).upperlimit = 100;      funcs(10).dim = 30;
funcs(11).name = 'Layeb11';          funcs(11).lowerlimit = -10;       funcs(11).upperlimit = 10;       funcs(11).dim = 30;
funcs(12).name = 'Layeb12';          funcs(12).lowerlimit = -5;        funcs(12).upperlimit = 5;        funcs(12).dim = 30;
funcs(13).name = 'Layeb13';          funcs(13).lowerlimit = -10;       funcs(13).upperlimit = 10;       funcs(13).dim = 30;
funcs(14).name = 'Layeb14';          funcs(14).lowerlimit = -100;      funcs(14).upperlimit = 100;      funcs(14).dim = 30;
funcs(15).name = 'Layeb15';          funcs(15).lowerlimit = -100;      funcs(15).upperlimit = 100;      funcs(15).dim = 30;
funcs(16).name = 'Layeb16';          funcs(16).lowerlimit = -10;       funcs(16).upperlimit = 10;       funcs(16).dim = 30;
funcs(17).name = 'Layeb17';          funcs(17).lowerlimit = -100;      funcs(17).upperlimit = 100;      funcs(17).dim = 30;
funcs(18).name = 'Layeb18';          funcs(18).lowerlimit = -10;       funcs(18).upperlimit =10;        funcs(18).dim = 30;
funcs(19).name = 'Layeb19';          funcs(19).lowerlimit = -5;        funcs(19).upperlimit = 5;        funcs(19).dim = 30;
funcs(20).name = 'Layeb20';          funcs(20).lowerlimit = -5;        funcs(20).upperlimit = 5;        funcs(20).dim = 30;



func = funcs(:,funcNum);

end

