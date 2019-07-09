`timescale 1ns / 1ps

/////////////////////////////////////////////// WAR10CK \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//                                                                                                          \\
//                                            , ,###*.                                                      \\
//                                       /&@@@@@@@@@@@@@@@@@@&                                              \\
//                                     @@@@%@@@@@@@@@*@@@@@@@@@@@                                           \\
//                                      @@@@(@@@@@@@@&@@@@@@@@@@&*/                                         \\
//                                        @@@@@@@@@@@@@@@@&@@@@*@(@@@                                       \\
//                                          (@@&@@@@,@@@%,@@@@(@&@@@@@,                                     \\
//                                            (@##&@%/@@(@@@@(@@@@@@@@@@                                    \\
//                                             ##@@@@@@@&(%@*@@@@@@@@*@@@@                                  \\
//                                              @@@@@@@@@@@@@(/@@@@&@@@@@@@                                 \\
//                                              @@@@@@@@@@@@@@@@%/(@@@@/@@@@@                               \\
//                                             @(&@@@@@@@@&(@@@@@@/#@(@@@@@@@@                              \\
//                                            @@@@@@@@@@@@@@@@@%@@@@@@@@@&&@@@&                             \\
//                                          @@@@@@@@@@@@@@@@@@@@@*@@@#,@@@@@@# &                            \\
//                                        @@@@@@@@@@@@@@@@@@@@@@@@@@@@/#@@@@@@@@                            \\
//                                       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@*@@@@/                           \\
//                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/@@@@@@@@                           \\
//                                      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                           \\
//                                      (@//@*@@@@@@@@@@@@@@@@@@@@@@@#@@@#@@@@@@@                           \\
//                                     ,@@@@@@/#@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@(                           \\
//                                     (@@#@@@@@%*@@@@@@@@@@@@@@@@@@@@@@#,,***//@                           \\
//                                     , @@@#/@@@@##@@@@@@@@@@@@@@@@@@@/&@@@@@@@&                           \\
//                                    ( &@@@@(/@@@@@(@@@@@@@//@@@@@@# ,@@@@@@@@@/                           \\
//                                   .&@@@(%@@@@@@@@@@@@@@(%@@@*@@@@  @@@@@@@@@.                            \\
//                                   @/@@@@@@@@@@@@@@@@@@%/@@@@@@@@@  @@@@@@@@                              \\
//                                   @@@@@@@@@@@@@@@@@@@@@#%@@@@(@%@, *%@@@@@                               \\
//                                  @&@@@@@@@@@@@@@@@@&@@    .&(@@@#@.@@@@@@                                \\
//                                  @%@@@@@@@@@@@@@%@@             &@/,@@@@,                                \\
//                                 &&@@@@@@@@@@@@&@                   @@@&@                                 \\
//                                 @%@@@@@@@@@&&                      &@@@@                                 \\
//                                *%@@@@@@@@#                          @@@@                                 \\
//                                @/@@@@@/                             #@@@                                 \\
//                                 @@*%                                 @@@                                 \\
//                                 @                                     @@*                                \\
//                                                                        @@                                \\
//                                                                         @@                               \\
//                                                                          &                               \\
//                                                                                                          \\
//                                                                                            ,--.          \\
//                    .---.   ,---,       ,-.----.       ,---,    ,----..     ,----..     ,--/  /|          \\
//                   /. ./|  '  .' \      \    /  \   ,`--.' |   /   /   \   /   /   \ ,---,': / '          \\
//               .--'.  ' ; /  ;    '.    ;   :    \ /    /  :  /   .     : |   :     ::   : '/ /           \\
//              /__./ \ : |:  :       \   |   | .\ ::    |.' ' .   /   ;.  \.   |  ;. /|   '   ,            \\
//          .--'.  '   \' .:  |   /\   \  .   : |: |`----':  |.   ;   /  ` ;.   ; /--` '   |  /             \\
//         /___/ \ |    ' '|  :  ' ;.   : |   |  \ :   '   ' ;;   |  ; \ ; |;   | ;    |   ;  ;             \\
//         \   \  \;      :|  |  ;/  \   \|   : .  /   |   | ||   :  | ; | '|   : |    :   '   \            \\
//          \   ;  `      |'  :  | \  \ ,';   | |  \   '   : ;.   |  ' ' ' :.   | '___ |   |    '           \\
//           .   \    .\  ;|  |  '  '--'  |   | ;\  \  |   | ''   ;  \; /  |'   ; : .'|'   : |.  \          \\
//            \   \   ' \ ||  :  :        :   ' | \.'  '   : | \   \  ',  / '   | '/  :|   | '_\.'          \\
//             :   '  |--" |  | ,'        :   : :-'    ;   |.'  ;   :    /  |   :    / '   : |              \\
//              \   \ ;    `--''          |   |.'      '---'     \   \ .'    \   \ .'  ;   |,'              \\
//               '---"                    `---'                   `---`       `---`    '---'                \\
//                                                                                                          \\
//              Create Date      : 07.07.2019                                                               \\
//              Module Name      : UserInputHandler                                                         \\
//              Target Devices   : Target Agnostic                                                          \\
//              Author           : WAR10CK                                                                  \\
//              Description      : This core handles the User Inputs which are coming from buttons          \\
//                                                                                                          \\
//                                                                                                          \\
//                                                                                                          \\
//              Update Date      : 07.07.2019                                                               \\
//              Status           : Development                                                              \\
//              Notes            :                                                                          \\
//                                                                                                          \\
//                                                                                                          \\
//                                                                                                          \\
/////////////////////////////////////////////// WAR10CK \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

module UserInputHandler
(
  IN_CLOCK                                                                                              ,
  IN_RESET_N                                                                                            ,
  IN_BUTTONS                                                                                            ,
  IN_COMP                                                                                               ,
  IN_CHECK                                                                                              ,
  OUT_SUCCESS                                                                                           ,
  OUT_FAILED                                            
);

input                           IN_CLOCK                                                                ; // Clock
input                           IN_RESET_N                                                              ; // 0 For Reset, 1 For No-Reset
input           [3:0]           IN_BUTTONS                                                              ; // Button Inputs
input           [3:0]           IN_COMP                                                                 ; // Compare Value
input                           IN_CHECK                                                                ; // Enable
output reg                      OUT_SUCCESS                                                             ; // Correct Button
output reg                      OUT_FAILED                                                              ; // Wrong Button
// output reg                      OUT_BUTTON_LOCKER                                                       ; // Locker

reg                             succ_r                                                                  ;
reg                             succ_r_d0                                                               ;
reg                             fail_r                                                                  ;
reg                             fail_r_d0                                                               ;

// Compare Button State & Input Value
always @ (posedge IN_CLOCK) begin
  if (!IN_RESET_N) begin
    succ_r                                          <= 1'b0                                             ;
    fail_r                                          <= 1'b0                                             ;
    succ_r_d0                                       <= 1'b0                                             ;
    fail_r_d0                                       <= 1'b0                                             ;
  end
  else begin
    if (IN_CHECK == 1'b1) begin
      if (IN_BUTTONS != 4'b0000) begin
        if (IN_BUTTONS == IN_COMP) begin
          succ_r                                    <= 1'b1                                             ;
          fail_r                                    <= 1'b0                                             ;
          succ_r_d0                                 <= succ_r                                           ;
          fail_r_d0                                 <= fail_r                                           ;
        end
        else begin
          succ_r                                    <= 1'b0                                             ;
          fail_r                                    <= 1'b1                                             ;
          succ_r_d0                                 <= succ_r                                           ;
          fail_r_d0                                 <= fail_r                                           ;
        end
      end
      else begin
        succ_r                                      <= 1'b0                                             ;
        fail_r                                      <= 1'b0                                             ;
        succ_r_d0                                   <= 1'b0                                             ;
        fail_r_d0                                   <= 1'b0                                             ;
      end
    end
    else begin
      succ_r                                        <= 1'b0                                             ;
      fail_r                                        <= 1'b0                                             ;
      succ_r_d0                                     <= 1'b0                                             ;
      fail_r_d0                                     <= 1'b0                                             ;
    end
  end
end

// Assign The Outputs
always @ (posedge IN_CLOCK) begin
  if (!IN_RESET_N) begin
    OUT_SUCCESS                                     <= 1'b0                                             ;
    OUT_FAILED                                      <= 1'b0                                             ;
  end
  else begin
    OUT_SUCCESS                                     <= ((succ_r == 1'b1) & (succ_r_d0 == 1'b0))         ;
    OUT_FAILED                                      <= ((fail_r == 1'b1) & (fail_r_d0 == 1'b0))         ;
  end
end

endmodule
