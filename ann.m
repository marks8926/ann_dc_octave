clc;clear all;N_inp = 4;N_hid = 9;N_out = 4;alpha = 0.3;n_pass_layer = 200;%%creacion de datosinput_total = table_truth(N_inp);output_total = table_targets(N_inp,N_out);output_total(1:4,2)=1;output_total(5:1) = 1; output_total(6:3) = 1;output_total(7:1) = 1; output_total(8:3) = 1;output_total(9:12,2)=1;output_total(13,4) = 1; output_total(14,3) = 1;output_total(15,4) = 1; %% variablesW1 = rand(N_inp, N_hid);W2 = rand(N_hid, N_out);%%hacer para cada dato de pruebafor jj = 1: (2^(N_input))X = zeros(1, N_inp);T = ones(1, N_out);for i=1:n_pass_layer%%feed forward%%hidden layerH = activation_function(X*W1);O = activation_function(H*W2);%%back propagation algorithm%%output layerE = T - O;delta = (O.*(1-O)).*E;W2p = W2 + alpha*(H'*delta);%%hidden layerdelta_h = (H.*(1-H)) .* (W2 * delta')';W1 = W1 + alpha*(X'*delta_h);W2p = W2;endforendfor