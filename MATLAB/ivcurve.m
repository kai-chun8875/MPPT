clear; 
fid = fopen('R:/solarcell7.txt', 'r') ; % Open source file.
fgetl(fid) ;                                  % Read/discard line.
fgetl(fid) ;                                  % Read/discard line.
buffer = fread(fid, Inf) ;                    % Read rest of the file.
fclose(fid);
fid = fopen('R:/no_header.txt', 'w')  ;   % Open destination file.
fwrite(fid, buffer) ;                         % Save to file.
fclose(fid) ;

A = tdfread('R:/no_header.txt');
plot(A.Voltage_0x5BV0x5D, A.x0x23_Current_0x5BA0x5D,'-o')
figure
plot(A.Voltage_0x5BV0x5D, A.Voltage_0x5BV0x5D.*A.x0x23_Current_0x5BA0x5D,'-o')