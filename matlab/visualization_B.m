%% Visualization for Prototype Array B
%  Mac Workman
%  maw157
%  EECS 399

M = zeros(61,61);

figure(1)

for i = 1:length(VarName1)
%%  row 1
tic
    
    M(2:3,7) = VarName1(i);
    M(4,6:8) = VarName1(i);
    M(5:6,5:9) = VarName1(i);
    M(7,4:10) = VarName1(i);
    M(8:9,3:11) = VarName1(i);
    M(10,2:12) = VarName1(i);
    
    M(2,9:19) = VarName2(i);
    M(3:4,10:18) = VarName2(i);
    M(5,11:17) = VarName2(i);
    M(6:7,12:16) = VarName2(i);
    M(8,13:15) = VarName2(i);
    M(9:10,14) = VarName2(i);
    
    M(2:3,21) = VarName3(i);
    M(4,20:22) = VarName3(i);
    M(5:6,19:23) = VarName3(i);
    M(7,18:24) = VarName3(i);
    M(8:9,17:25) = VarName3(i);
    M(10,16:26) = VarName3(i);
    
    M(2,23:33) = VarName4(i);
    M(3:4,24:32) = VarName4(i);
    M(5,25:31) = VarName4(i);
    M(6:7,26:30) = VarName4(i);
    M(8,27:29) = VarName4(i);
    M(9:10,28) = VarName4(i);
    
    M(2:3,35) = VarName5(i);
    M(4,34:36) = VarName5(i);
    M(5:6,33:37) = VarName5(i);
    M(7,32:38) = VarName5(i);
    M(8:9,31:39) = VarName5(i);
    M(10,30:40) = VarName5(i);
    
    M(2,37:47) = VarName6(i);
    M(3:4,38:46) = VarName6(i);
    M(5,39:45) = VarName6(i);
    M(6:7,40:44) = VarName6(i);
    M(8,41:43) = VarName6(i);
    M(9:10,42) = VarName6(i);
    
    M(2:3,49) = VarName7(i);
    M(4,48:50) = VarName7(i);
    M(5:6,47:51) = VarName7(i);
    M(7,46:52) = VarName7(i);
    M(8:9,45:53) = VarName7(i);
    M(10,44:54) = VarName7(i);
    
    M(2,51:61) = VarName8(i);
    M(3:4,52:60) = VarName8(i);
    M(5,53:59) = VarName8(i);
    M(6:7,54:58) = VarName8(i);
    M(8,55:57) = VarName8(i);
    M(9:10,56) = VarName8(i);
    
%%  row 2
    
    M(12,2:12) = VarName1(i);
    M(13:14,3:11) = VarName1(i);
    M(15,4:10) = VarName1(i);
    M(16:17,5:9) = VarName1(i);
    M(18,6:8) = VarName1(i);
    M(19:20,7) = VarName1(i);
    
    M(12:13,14) = VarName2(i);
    M(14,13:15) = VarName2(i);
    M(15:16,12:16) = VarName2(i);
    M(17,11:17) = VarName2(i);
    M(18:19,10:18) = VarName2(i);
    M(20,9:19) = VarName2(i);
    
    M(12,16:26) = VarName3(i);
    M(13:14,17:25) = VarName3(i);
    M(15,18:24) = VarName3(i);
    M(16:17,19:23) = VarName3(i);
    M(18,20:22) = VarName3(i);
    M(19:20,21) = VarName3(i);
    
    M(12:13,28) = VarName4(i);
    M(14,27:29) = VarName4(i);
    M(15:16,26:30) = VarName4(i);
    M(17,25:31) = VarName4(i);
    M(18:19,24:32) = VarName4(i);
    M(20,23:33) = VarName4(i);
    
    M(12,30:40) = VarName5(i);
    M(13:14,31:39) = VarName5(i);
    M(15,32:38) = VarName5(i);
    M(16:17,33:37) = VarName5(i);
    M(18,34:36) = VarName5(i);
    M(19:20,35) = VarName5(i);
    
    M(12:13,42) = VarName6(i);
    M(14,41:43) = VarName6(i);
    M(15:16,40:44) = VarName6(i);
    M(17,39:45) = VarName6(i);
    M(18:19,38:46) = VarName6(i);
    M(20,37:47) = VarName6(i);
    
    M(12,44:54) = VarName7(i);
    M(13:14,45:53) = VarName7(i);
    M(15,46:52) = VarName7(i);
    M(16:17,47:51) = VarName7(i);
    M(18,48:50) = VarName7(i);
    M(19:20,49) = VarName7(i);
    
    M(12:13,56) = VarName8(i);
    M(14,55:57) = VarName8(i);
    M(15:16,54:58) = VarName8(i);
    M(17,53:59) = VarName8(i);
    M(18:19,52:60) = VarName8(i);
    M(20,51:61) = VarName8(i);
    
%%  row 3
    
    M(22:23,7) = VarName1(i);
    M(24,6:8) = VarName1(i);
    M(25:26,5:9) = VarName1(i);
    M(27,4:10) = VarName1(i);
    M(28:29,3:11) = VarName1(i);
    M(30,2:12) = VarName1(i);
    
    M(22,9:19) = VarName2(i);
    M(23:24,10:18) = VarName2(i);
    M(25,11:17) = VarName2(i);
    M(26:27,12:16) = VarName2(i);
    M(28,13:15) = VarName2(i);
    M(29:30,14) = VarName2(i);
    
    M(22:23,21) = VarName3(i);
    M(24,20:22) = VarName3(i);
    M(25:26,19:23) = VarName3(i);
    M(27,18:24) = VarName3(i);
    M(28:29,17:25) = VarName3(i);
    M(30,16:26) = VarName3(i);
    
    M(22,23:33) = VarName4(i);
    M(23:24,24:32) = VarName4(i);
    M(25,25:31) = VarName4(i);
    M(26:27,26:30) = VarName4(i);
    M(28,27:29) = VarName4(i);
    M(29:30,28) = VarName4(i);
    
    M(22:23,35) = VarName5(i);
    M(24,34:36) = VarName5(i);
    M(25:26,33:37) = VarName5(i);
    M(27,32:38) = VarName5(i);
    M(28:29,31:39) = VarName5(i);
    M(30,30:40) = VarName5(i);
    
    M(22,37:47) = VarName6(i);
    M(23:24,38:46) = VarName6(i);
    M(25,39:45) = VarName6(i);
    M(26:27,40:44) = VarName6(i);
    M(28,41:43) = VarName6(i);
    M(29:30,42) = VarName6(i);
    
    M(22:23,49) = VarName7(i);
    M(24,48:50) = VarName7(i);
    M(25:26,47:51) = VarName7(i);
    M(27,46:52) = VarName7(i);
    M(28:29,45:53) = VarName7(i);
    M(30,44:54) = VarName7(i);
    
    M(22,51:61) = VarName8(i);
    M(23:24,52:60) = VarName8(i);
    M(25,53:59) = VarName8(i);
    M(26:27,54:58) = VarName8(i);
    M(28,55:57) = VarName8(i);
    M(29:30,56) = VarName8(i);
    
%%  row 4
    
    M(32,2:12) = VarName1(i);
    M(33:34,3:11) = VarName1(i);
    M(35,4:10) = VarName1(i);
    M(36:37,5:9) = VarName1(i);
    M(38,6:8) = VarName1(i);
    M(39:40,7) = VarName1(i);
    
    M(32:33,14) = VarName2(i);
    M(34,13:15) = VarName2(i);
    M(35:36,12:16) = VarName2(i);
    M(37,11:17) = VarName2(i);
    M(38:39,10:18) = VarName2(i);
    M(40,9:19) = VarName2(i);
    
    M(32,16:26) = VarName3(i);
    M(33:34,17:25) = VarName3(i);
    M(35,18:24) = VarName3(i);
    M(36:37,19:23) = VarName3(i);
    M(38,20:22) = VarName3(i);
    M(39:40,21) = VarName3(i);
    
    M(32:33,28) = VarName4(i);
    M(34,27:29) = VarName4(i);
    M(35:36,26:30) = VarName4(i);
    M(37,25:31) = VarName4(i);
    M(38:39,24:32) = VarName4(i);
    M(40,23:33) = VarName4(i);
    
    M(32,30:40) = VarName5(i);
    M(33:34,31:39) = VarName5(i);
    M(35,32:38) = VarName5(i);
    M(36:37,33:37) = VarName5(i);
    M(38,34:36) = VarName5(i);
    M(39:40,35) = VarName5(i);
    
    M(32:33,42) = VarName6(i);
    M(34,41:43) = VarName6(i);
    M(35:36,40:44) = VarName6(i);
    M(37,39:45) = VarName6(i);
    M(38:39,38:46) = VarName6(i);
    M(40,37:47) = VarName6(i);
    
    M(32,44:54) = VarName7(i);
    M(33:34,45:53) = VarName7(i);
    M(35,46:52) = VarName7(i);
    M(36:37,47:51) = VarName7(i);
    M(38,48:50) = VarName7(i);
    M(39:40,49) = VarName7(i);
    
    M(32:33,56) = VarName8(i);
    M(34,55:57) = VarName8(i);
    M(35:36,54:58) = VarName8(i);
    M(37,53:59) = VarName8(i);
    M(38:39,52:60) = VarName8(i);
    M(40,51:61) = VarName8(i);
    
%%  row 5
    
    M(42:43,7) = VarName1(i);
    M(44,6:8) = VarName1(i);
    M(45:46,5:9) = VarName1(i);
    M(47,4:10) = VarName1(i);
    M(48:49,3:11) = VarName1(i);
    M(50,2:12) = VarName1(i);
    
    M(42,9:19) = VarName2(i);
    M(43:44,10:18) = VarName2(i);
    M(45,11:17) = VarName2(i);
    M(46:47,12:16) = VarName2(i);
    M(48,13:15) = VarName2(i);
    M(49:50,14) = VarName2(i);
    
    M(42:43,21) = VarName3(i);
    M(44,20:22) = VarName3(i);
    M(45:46,19:23) = VarName3(i);
    M(47,18:24) = VarName3(i);
    M(48:49,17:25) = VarName3(i);
    M(50,16:26) = VarName3(i);
    
    M(42,23:33) = VarName4(i);
    M(43:44,24:32) = VarName4(i);
    M(45,25:31) = VarName4(i);
    M(46:47,26:30) = VarName4(i);
    M(48,27:29) = VarName4(i);
    M(49:50,28) = VarName4(i);
    
    M(42:43,35) = VarName5(i);
    M(44,34:36) = VarName5(i);
    M(45:46,33:37) = VarName5(i);
    M(47,32:38) = VarName5(i);
    M(48:49,31:39) = VarName5(i);
    M(50,30:40) = VarName5(i);
    
    M(42,37:47) = VarName6(i);
    M(43:44,38:46) = VarName6(i);
    M(45,39:45) = VarName6(i);
    M(46:47,40:44) = VarName6(i);
    M(48,41:43) = VarName6(i);
    M(49:50,42) = VarName6(i);
    
    M(42:43,49) = VarName7(i);
    M(44,48:50) = VarName7(i);
    M(45:46,47:51) = VarName7(i);
    M(47,46:52) = VarName7(i);
    M(48:49,45:53) = VarName7(i);
    M(50,44:54) = VarName7(i);
    
    M(42,51:61) = VarName8(i);
    M(43:44,52:60) = VarName8(i);
    M(45,53:59) = VarName8(i);
    M(46:47,54:58) = VarName8(i);
    M(48,55:57) = VarName8(i);
    M(49:50,56) = VarName8(i);
    
%%  row 4
    
    M(52,2:12) = VarName1(i);
    M(53:54,3:11) = VarName1(i);
    M(55,4:10) = VarName1(i);
    M(56:57,5:9) = VarName1(i);
    M(58,6:8) = VarName1(i);
    M(59:60,7) = VarName1(i);
    
    M(52:53,14) = VarName2(i);
    M(54,13:15) = VarName2(i);
    M(55:56,12:16) = VarName2(i);
    M(57,11:17) = VarName2(i);
    M(58:59,10:18) = VarName2(i);
    M(60,9:19) = VarName2(i);
    
    M(52,16:26) = VarName3(i);
    M(53:54,17:25) = VarName3(i);
    M(55,18:24) = VarName3(i);
    M(56:57,19:23) = VarName3(i);
    M(58,20:22) = VarName3(i);
    M(59:60,21) = VarName3(i);
    
    M(52:53,28) = VarName4(i);
    M(54,27:29) = VarName4(i);
    M(55:56,26:30) = VarName4(i);
    M(57,25:31) = VarName4(i);
    M(58:59,24:32) = VarName4(i);
    M(60,23:33) = VarName4(i);
    
    M(52,30:40) = VarName5(i);
    M(53:54,31:39) = VarName5(i);
    M(55,32:38) = VarName5(i);
    M(56:57,33:37) = VarName5(i);
    M(58,34:36) = VarName5(i);
    M(59:60,35) = VarName5(i);
    
    M(52:53,42) = VarName6(i);
    M(54,41:43) = VarName6(i);
    M(55:56,40:44) = VarName6(i);
    M(57,39:45) = VarName6(i);
    M(58:59,38:46) = VarName6(i);
    M(60,37:47) = VarName6(i);
    
    M(52,44:54) = VarName7(i);
    M(53:54,45:53) = VarName7(i);
    M(55,46:52) = VarName7(i);
    M(56:57,47:51) = VarName7(i);
    M(58,48:50) = VarName7(i);
    M(59:60,49) = VarName7(i);
    
    M(52:53,56) = VarName8(i);
    M(54,55:57) = VarName8(i);
    M(55:56,54:58) = VarName8(i);
    M(57,53:59) = VarName8(i);
    M(58:59,52:60) = VarName8(i);
    M(60,51:61) = VarName8(i);    
    
%%  Plotting    
    contourf(M,10)
    set(gca,'YDir','reverse')
    axis equal
    drawnow
    pause(0.05)
    toc
end