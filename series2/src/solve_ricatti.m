function [P, K] = solve_ricatti (Q, R, A, B)
    P = Q; % start from Q
    counter = 0;
    u = [];
    while true
        P_new = Q + A' * P * A - A * P * B * pinv(B' * P * B + R) * B' * P * A;
        if norm(P_new - P) < 0.00001
            break;
        end
        P = P_new
        K = pinv(R + B' * P * B) * B' * P * A
        counter = counter + 1
    end
endfunction
