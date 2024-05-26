% Copyright (C) 2024 Crypt
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <https://www.gnu.org/licenses/>.

% -*- texinfo -*-
% @deftypefn {} {@var{retval} =} Ve_hinh_hop_chu_nhat (@var{input1}, @var{input2})
%
% @seealso{}
% @end deftypefn

% Author: Crypt <crypt@debian>
% Created: 2024-05-26

%Ve_hinh_hop_chu_nhat is the command-line function:
function Ve_hinh_hop_chu_nhat(MT_Dinh)


        %Tao ma tran duong

        MT_Duong = [
        1, 2;
        2, 3;
        3, 4;
        4, 1;
        5, 6;
        6, 7;
        7, 8;
        8, 5;
        1, 5;
        2, 6;
        3, 7;
        4, 8
        ];

        MT_Mat = [
    1, 2, 3, 4; % Mat duoi
    2, 3, 7, 6; % Mat tren
    3, 4, 8, 7; % Mat ben 1
    1, 4, 8, 5; % Mat ben 2
    1, 2, 6, 5; % Mat ben 3
    5, 6, 7, 8  % Mat ben 4
];

        %Ve
        for i = 1:size(MT_Duong, 1)
        plot3( MT_Dinh( MT_Duong( i , : ), 1 ), MT_Dinh( MT_Duong( i , : ), 2 ), MT_Dinh( MT_Duong( i , : ), 3 ), 'k');
        end

        %To mau
        patch('Vertices', MT_Dinh, 'Faces', MT_Mat, 'FaceColor', 'blue', 'EdgeColor', 'none', 'FaceAlpha', 0.5);


        xlabel('X');
        ylabel('Y');
        zlabel('Z');
        grid on;


end


