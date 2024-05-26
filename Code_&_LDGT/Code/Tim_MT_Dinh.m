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
% @deftypefn {} {@var{retval} =} Tim_MT_Dinh (@var{input1}, @var{input2})
%
% @seealso{}
% @end deftypefn

% Author: Crypt <crypt@debian>
% Created: 2024-05-26

%Tim_MT_Dinh is the command-line function:



function MT_Dinh = Tim_MT_Dinh (x_giua_gt, y_giua_gt, delta_x, delta_y, S)

 % Tinh diem 1
  x_d1 = x_giua_gt - delta_x / 2;
  y_d1 = y_giua_gt - delta_y / 2;
  z = 0.0;
  % Luu lai diem 1
  MT_Dinh (1, :) = [x_d1, y_d1, z];

  % Tinh diem 2
  x_d2 = x_giua_gt - delta_x / 2;
  y_d2 = y_giua_gt + delta_y / 2;
  z = 0.0;
  % Luu lai diem 2
  MT_Dinh (2, :) = [x_d2, y_d2, z];

  % Tinh diem 3
  x_d3 = x_giua_gt + delta_x / 2;
  y_d3 = y_giua_gt + delta_y / 2;
  z = 0.0;
  % Luu lai diem 3
  MT_Dinh (3, :) = [x_d3, y_d3, z];

  % Tinh diem 4
  x_d4 = x_giua_gt + delta_x / 2;
  y_d4 = y_giua_gt - delta_y / 2;
  z = 0.0;
  % Luu lai diem 4
  MT_Dinh (4, :) = [x_d4, y_d4, z];

  % Tinh diem 5
  x_d5 = x_giua_gt - delta_x / 2;
  y_d5 = y_giua_gt - delta_y / 2;
  z = S ;
  % Luu lai diem 5
  MT_Dinh (5, :) = [x_d5, y_d5, z];

  % Tinh diem 6
  x_d6 = x_giua_gt - delta_x / 2;
  y_d6 = y_giua_gt + delta_y / 2;
  z = S ;
  % Luu lai diem 6
  MT_Dinh (6, :) = [x_d6, y_d6, z];

  % Tinh diem 7
  x_d7 = x_giua_gt + delta_x / 2;
  y_d7 = y_giua_gt + delta_y / 2;
  z = S ;
  % Luu lai diem 7
  MT_Dinh (7, :) = [x_d7, y_d7, z];

  % Tinh diem 8
  x_d8 = x_giua_gt + delta_x / 2;
  y_d8 = y_giua_gt - delta_y / 2;
  z = S ;
  % Luu lai diem 8
  MT_Dinh (8, :) = [x_d8, y_d8, z];

end



