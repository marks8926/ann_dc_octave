## Copyright (C) 2016 MARKS ARTURO CALDERON NIQUIN
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} table_truth (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: MARKS ARTURO CALDERON NIQUIN <marksarturocalderonniquin@macmarks.esan.edu.pe>
## Created: 2016-10-07

function [out] = table_truth (n_inputs)

  nrows = 2^n_inputs;
  out = ones(nrows, n_inputs);
  ind = [1:2^n_inputs];
  for i=1:n_inputs
  
    indices = ind(1: 2^(n_inputs - i) :2^n_inputs);
    salto = 2^(n_inputs - i) - 1;
    flag = false;
    for ii=indices
      out(ii:ii+salto, i) = flag;
      flag = ~flag;
    endfor
  endfor
  

endfunction
