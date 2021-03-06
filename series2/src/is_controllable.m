function res = is_controllable (A, B)
    T = [B, A * B, A^2 * B];
    res = rank(T) == 3;
endfunction

% A1 = [ 1 0 1; 0 1.5 0; 1 0 0 ]
% A2 = [ 1 0 1; 0 1.5 0; 1 0 0 ]
% A3 = [ 0.5 0 0.5; 0 -0.5 -1; 0 0 0.5 ]
% A4 = [ 0.5 0.5 0; 0 -0.5 -1; -0.1 0 0.5 ]
% B1 = [ 0; 0; 1 ]
% B2 = [ 0; 1; 1 ]
% B3 = [ 1; 0; 1 ]
% B4 = [ 0; 1; 0 ]
