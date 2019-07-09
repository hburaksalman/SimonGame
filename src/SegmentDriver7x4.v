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
//              Module Name      : SegmentDriver7x4                                                         \\
//              Target Devices   : Target Agnostic                                                          \\
//              Author           : WAR10CK                                                                  \\
//              Description      : This core drives 4 7-Segment Display(s)                                  \\
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

module SegmentDriver7x4
(
  IN_CLOCK                                                                                          ,
  IN_RESET_N                                                                                        ,
  IN_SCORE                                                                                          ,
  OUT_DIGITS_ENABLE                                                                                 ,
  OUT_DATA_BUS                                                                                      
);

input                           IN_CLOCK                                                            ;
input                           IN_RESET_N                                                          ;
input           [7:0]           IN_SCORE                                                            ;
output reg      [3:0]           OUT_DIGITS_ENABLE                                                   ;
output reg      [7:0]           OUT_DATA_BUS                                                        ;

reg             [3:0]           state_r                                                             ;
reg             [7:0]           HARDCODED_NUMS [9:0]                                                ;
reg             [3:0]           thousands_r                                                         ;
reg             [3:0]           hundreds_r                                                          ;
reg             [3:0]           tens_r                                                              ;
reg             [3:0]           units_r                                                             ;

reg                             req_delay_r                                                         ;
reg                             delay_done_r                                                        ;

wire                            delay_done_w                                                        ;

parameter       [31:0]          DELAY_4MS           = 32'h00030D40                                  ;
parameter       [3:0]           DIGIT0              = 4'hE                                          ;
parameter       [3:0]           DIGIT1              = 4'hD                                          ;
parameter       [3:0]           DIGIT2              = 4'hB                                          ;
parameter       [3:0]           DIGIT3              = 4'h7                                          ;
parameter       [11:0]          THOUSAND            = 12'h3E8                                       ;
parameter       [7:0]           HUNDRED             = 8'h64                                         ;
parameter       [3:0]           TEN                 = 4'hA                                          ;

// Load The Numbers to ROM
initial begin
  HARDCODED_NUMS[0]                                 <= 8'hC0                                        ;
  HARDCODED_NUMS[1]                                 <= 8'hF9                                        ;
  HARDCODED_NUMS[2]                                 <= 8'hA4                                        ;
  HARDCODED_NUMS[3]                                 <= 8'hB0                                        ;
  HARDCODED_NUMS[4]                                 <= 8'h99                                        ;
  HARDCODED_NUMS[5]                                 <= 8'h92                                        ;
  HARDCODED_NUMS[6]                                 <= 8'h82                                        ;
  HARDCODED_NUMS[7]                                 <= 8'hF8                                        ;
  HARDCODED_NUMS[8]                                 <= 8'h80                                        ;
  HARDCODED_NUMS[9]                                 <= 8'h98                                        ;
end

// Calculate The Digits
always @ (posedge IN_CLOCK) begin
  units_r                                           <= ((IN_SCORE % THOUSAND) % HUNDRED) % TEN      ;
  tens_r                                            <= ((IN_SCORE % THOUSAND) % HUNDRED) / TEN      ;
  hundreds_r                                        <= (IN_SCORE % THOUSAND) / HUNDRED              ;
  thousands_r                                       <= IN_SCORE / THOUSAND                          ;
  delay_done_r                                      <= delay_done_w                                 ;
end

// Assign The Outputs
always @ (posedge IN_CLOCK) begin
  if (!IN_RESET_N) begin
    req_delay_r                                     <= 1'b0                                         ;
    state_r                                         <= DIGIT0                                       ;
    OUT_DIGITS_ENABLE                               <= DIGIT0                                       ;
    OUT_DATA_BUS                                    <= HARDCODED_NUMS[0]                            ;
  end
  else begin
    case (state_r)
      DIGIT0: begin
        if (delay_done_r == 1'b0) begin
          req_delay_r                               <= 1'b1                                         ;
          state_r                                   <= DIGIT0                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT0                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[units_r]                      ;
        end
        else begin
          req_delay_r                               <= 1'b0                                         ;
          state_r                                   <= DIGIT1                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT0                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[units_r]                      ;
        end
      end
      DIGIT1: begin
        if (delay_done_r == 1'b0) begin
          req_delay_r                               <= 1'b1                                         ;
          state_r                                   <= DIGIT1                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT1                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[tens_r]                       ;
        end
        else begin
          req_delay_r                               <= 1'b0                                         ;
          state_r                                   <= DIGIT2                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT1                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[tens_r]                       ;
        end
      end
      DIGIT2: begin
        if (delay_done_r == 1'b0) begin
          req_delay_r                               <= 1'b1                                         ;
          state_r                                   <= DIGIT2                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT2                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[hundreds_r]                   ;
        end
        else begin
          req_delay_r                               <= 1'b0                                         ;
          state_r                                   <= DIGIT3                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT2                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[hundreds_r]                   ;
        end
      end
      DIGIT3: begin
        if (delay_done_r == 1'b0) begin
          req_delay_r                               <= 1'b1                                         ;
          state_r                                   <= DIGIT3                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT3                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[thousands_r]                  ;
        end
        else begin
          req_delay_r                               <= 1'b0                                         ;
          state_r                                   <= DIGIT0                                       ;
          OUT_DIGITS_ENABLE                         <= DIGIT3                                       ;
          OUT_DATA_BUS                              <= HARDCODED_NUMS[thousands_r]                  ;
        end
      end
    endcase
  end
end

DelayHandler IntervalHandler
(
  .IN_CLOCK             (IN_CLOCK)                                                                  ,
  .IN_RESET_N           (IN_RESET_N)                                                                ,
  .IN_START             (req_delay_r)                                                               ,
  .IN_CANCEL            (1'b0)                                                                      ,
  .IN_COUNTER_VAL       (DELAY_4MS)                                                                 ,
  .OUT_IRQ              (delay_done_w)                                                              
);

endmodule
