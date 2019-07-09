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
//              Module Name      : SimonGame                                                                \\
//              Target Devices   : Target Agnostic                                                          \\
//              Author           : WAR10CK                                                                  \\
//              Description      : This core is implementation of the Simon Game                            \\
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

module SimonGame
(
  IN_CLOCK                                                                                  ,
  IN_RESET_N                                                                                ,
  IN_BUTTONS                                                                                ,
  OUT_LEDS                                                                                  ,
  OUT_7SEG_DIGITS                                                                           ,
  OUT_7SEG_DATAS                                                                            
);

// Inputs & Outputs
input                           IN_CLOCK                                                    ; // Clock
input                           IN_RESET_N                                                  ; // Active Low Reset
input           [3:0]           IN_BUTTONS                                                  ; // Buttons
output          [3:0]           OUT_LEDS                                                    ; // LEDs
output          [3:0]           OUT_7SEG_DIGITS                                             ; // 7 Segment Display Digits
output          [7:0]           OUT_7SEG_DATAS                                              ; // 7 Segment Display Data Bus

// Registers & Wires
reg             [7:0]           game_start_counter_r                                        ;
reg                             start_the_game_r                                            ;
reg             [3:0]           state_r                                                     ;
reg             [3:0]           randomizer_r                                                ;
reg             [3:0]           leds_r                                                      ;
reg             [3:0]           buttons_r                                                   ;
reg             [3:0]           buttons_r_d0                                                ;
reg             [3:0]           button_pressed_r                                            ;
reg                             req_short_delay_r                                           ;
reg                             cancel_short_delay_r                                        ;
reg                             short_delay_done_r                                          ;
reg                             req_long_delay_r                                            ;
reg                             cancel_long_delay_r                                         ;
reg                             long_delay_done_r                                           ;

reg             [7:0]           user_wave_r                                                 ;
reg             [7:0]           clone_user_wave_r                                           ;
reg             [3:0]           rom_arr [255:0]                                             ;
reg             [7:0]           rom_addr_r                                                  ;
reg             [7:0]           rom_read_addr_r                                             ;
reg                             rom_done_r                                                  ;
reg             [3:0]           compare_value_r                                             ;
reg                             game_over_r                                                 ;
reg                             next_wave_r                                                 ;

wire            [3:0]           randomizer_w                                                ;
wire                            short_delay_done_w                                          ;
wire                            long_delay_done_w                                           ;

parameter       [3:0]           LIGHT_THE_LEDS      = 4'b0000                               ;
parameter       [3:0]           FADE_THE_LEDS       = 4'b0001                               ;
parameter       [3:0]           REQ_DELAY           = 4'b0010                               ;
parameter       [3:0]           WAIT_FOR_USER_INPUT = 4'b0011                               ;
parameter       [3:0]           LOSER_STATE1        = 4'b0100                               ;
parameter       [3:0]           LOSER_STATE2        = 4'b0101                               ;
parameter       [3:0]           LOSER_STATE3        = 4'b0110                               ;
parameter       [3:0]           LOSER_STATE4        = 4'b0111                               ;
parameter       [3:0]           EXTRA_DELAY         = 4'b1000                               ;

parameter       [31:0]          SHORT_COUNTER_VALUE = 32'h03938700                          ;
parameter       [31:0]          LONG_COUNTER_VALUE  = 32'h1DCD6500                          ; // For 2 Seconds = 32'h05F5E100, For 500 ms = 32'h017D7840

// https://www.youtube.com/watch?v=1Yqj76Q4jJ4

// Game Starter Logic
always @ (posedge IN_CLOCK) begin
  if (!IN_RESET_N) begin
    game_start_counter_r                            <= 8'h00                                ;
    start_the_game_r                                <= 1'b0                                 ;
  end
  else begin
    if (state_r == LOSER_STATE4) begin
      game_start_counter_r                          <= 8'h00                                ;
      start_the_game_r                              <= 1'b0                                 ;
    end
    else begin
      if (game_start_counter_r != 8'hFF) begin
        game_start_counter_r                        <= game_start_counter_r + 1'b1          ;
        start_the_game_r                            <= 1'b0                                 ;
      end
      else begin
        game_start_counter_r                        <= game_start_counter_r                 ;
        start_the_game_r                            <= 1'b1                                 ;
      end
    end
  end
end

// ROM Write
always @ (posedge IN_CLOCK) begin
  if ((!IN_RESET_N) | (state_r == LOSER_STATE4)) begin
    rom_arr[rom_addr_r]                             <= rom_arr[rom_addr_r]                  ;
    rom_addr_r                                      <= 8'h00                                ;
    rom_done_r                                      <= 1'b0                                 ;
  end
  else begin
    if (game_start_counter_r > 8'h02) begin
      if (rom_addr_r != 8'hFF) begin
        rom_arr[rom_addr_r]                         <= randomizer_r                         ;
        rom_addr_r                                  <= rom_addr_r + 1'b1                    ;
        rom_done_r                                  <= 1'b0                                 ;
      end
      else begin
        if (rom_done_r == 1'b1) begin
          rom_arr[rom_addr_r]                       <= rom_arr[rom_addr_r]                  ;
          rom_addr_r                                <= rom_addr_r                           ;
          rom_done_r                                <= 1'b1                                 ;
        end
        else begin
          rom_arr[rom_addr_r]                       <= randomizer_r                         ;
          rom_addr_r                                <= rom_addr_r                           ;
          rom_done_r                                <= 1'b1                                 ;
        end
      end
    end
    else begin
      rom_arr[rom_addr_r]                           <= rom_arr[rom_addr_r]                  ;
      rom_addr_r                                    <= rom_addr_r                           ;
      rom_done_r                                    <= rom_done_r                           ;
    end
  end
end

// Buffer
always @ (posedge IN_CLOCK) begin
  short_delay_done_r                                <= short_delay_done_w                   ;
  long_delay_done_r                                 <= long_delay_done_w                    ;
  randomizer_r                                      <= randomizer_w                         ;
  game_over_r                                       <= game_over_w                          ;
  next_wave_r                                       <= next_wave_w                          ;
  buttons_r                                         <= IN_BUTTONS                           ;
  buttons_r_d0                                      <= buttons_r                            ;
end

// Button Buffer
always @ (posedge IN_CLOCK) begin
  if ((buttons_r != 4'h0) & (buttons_r_d0 == 4'h0)) begin
    button_pressed_r                                <= buttons_r                            ;
  end
  else begin
    button_pressed_r                                <= 4'h0                                 ;
  end
end

// Game Logic
always @ (posedge IN_CLOCK) begin
  if (!IN_RESET_N) begin
    leds_r                                          <= 4'hF                                 ;
    req_short_delay_r                               <= 1'b0                                 ;
    state_r                                         <= LIGHT_THE_LEDS                       ;
    user_wave_r                                     <= 8'h00                                ;
    clone_user_wave_r                               <= 8'h00                                ;
    compare_value_r                                 <= rom_arr[rom_read_addr_r]             ;
    rom_read_addr_r                                 <= 8'h00                                ;
    cancel_short_delay_r                            <= 1'b0                                 ;
    req_long_delay_r                                <= 1'b0                                 ;
    cancel_long_delay_r                             <= 1'b0                                 ;
  end
  else begin
    if (start_the_game_r == 1'b1) begin
      case (state_r)
        LIGHT_THE_LEDS: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= rom_arr[clone_user_wave_r]           ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= LIGHT_THE_LEDS                       ;
            user_wave_r                             <= user_wave_r                          ;
            clone_user_wave_r                       <= clone_user_wave_r                    ;
            compare_value_r                         <= compare_value_r                      ;
            rom_read_addr_r                         <= rom_read_addr_r                      ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b0                                 ;
          end
          else begin
            leds_r                                  <= rom_arr[clone_user_wave_r]           ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= FADE_THE_LEDS                        ;
            user_wave_r                             <= user_wave_r                          ;
            clone_user_wave_r                       <= clone_user_wave_r                    ;
            compare_value_r                         <= compare_value_r                      ;
            rom_read_addr_r                         <= rom_read_addr_r                      ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b0                                 ;
          end
        end
        FADE_THE_LEDS: begin
          if (clone_user_wave_r != user_wave_r) begin
            if (short_delay_done_r == 1'b0) begin
              leds_r                                <= 4'h0                                 ;
              req_short_delay_r                     <= 1'b1                                 ;
              state_r                               <= FADE_THE_LEDS                        ;
              user_wave_r                           <= user_wave_r                          ;
              clone_user_wave_r                     <= clone_user_wave_r                    ;
              compare_value_r                       <= compare_value_r                      ;
              rom_read_addr_r                       <= rom_read_addr_r                      ;
              cancel_short_delay_r                  <= 1'b0                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b0                                 ;
            end
            else begin
              leds_r                                <= 4'h0                                 ;
              req_short_delay_r                     <= 1'b0                                 ;
              state_r                               <= LIGHT_THE_LEDS                       ;
              user_wave_r                           <= user_wave_r                          ;
              clone_user_wave_r                     <= clone_user_wave_r + 1'b1             ;
              compare_value_r                       <= compare_value_r                      ;
              rom_read_addr_r                       <= rom_read_addr_r                      ;
              cancel_short_delay_r                  <= 1'b0                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b0                                 ;
            end
          end
          else begin
            if (short_delay_done_r == 1'b0) begin
              leds_r                                <= 4'h0                                 ;
              req_short_delay_r                     <= 1'b1                                 ;
              state_r                               <= FADE_THE_LEDS                        ;
              user_wave_r                           <= user_wave_r                          ;
              clone_user_wave_r                     <= clone_user_wave_r                    ;
              compare_value_r                       <= compare_value_r                      ;
              rom_read_addr_r                       <= rom_read_addr_r                      ;
              cancel_short_delay_r                  <= 1'b0                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b0                                 ;
            end
            else begin
              leds_r                                <= buttons_r                            ;
              req_short_delay_r                     <= 1'b0                                 ;
              state_r                               <= REQ_DELAY                            ;
              user_wave_r                           <= user_wave_r                          ;
              clone_user_wave_r                     <= clone_user_wave_r                    ;
              compare_value_r                       <= compare_value_r                      ;
              rom_read_addr_r                       <= rom_read_addr_r                      ;
              cancel_short_delay_r                  <= 1'b1                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b1                                 ;
            end
          end
        end
        REQ_DELAY: begin
          leds_r                                    <= buttons_r                            ;
          req_short_delay_r                         <= 1'b0                                 ;
          state_r                                   <= WAIT_FOR_USER_INPUT                  ;
          user_wave_r                               <= user_wave_r                          ;
          clone_user_wave_r                         <= clone_user_wave_r                    ;
          compare_value_r                           <= rom_arr[rom_read_addr_r]             ;
          rom_read_addr_r                           <= rom_read_addr_r                      ;
          cancel_short_delay_r                      <= 1'b0                                 ;
          req_long_delay_r                          <= 1'b1                                 ;
          cancel_long_delay_r                       <= 1'b0                                 ;
        end
        WAIT_FOR_USER_INPUT: begin
          if (rom_read_addr_r != user_wave_r) begin
            if (long_delay_done_r == 1'b0) begin
              if (next_wave_r == 1'b1) begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= REQ_DELAY                            ;
                user_wave_r                         <= user_wave_r                          ;
                clone_user_wave_r                   <= 8'h00                                ;
                compare_value_r                     <= rom_arr[rom_read_addr_r]             ;
                rom_read_addr_r                     <= rom_read_addr_r + 1'b1               ;
                cancel_short_delay_r                <= 1'b1                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b1                                 ;
              end
              else if (game_over_r == 1'b1) begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= LOSER_STATE1                         ;
                user_wave_r                         <= 8'h00                                ;
                clone_user_wave_r                   <= 8'h00                                ;
                compare_value_r                     <= rom_arr[rom_read_addr_r]             ;
                rom_read_addr_r                     <= 8'h00                                ;
                cancel_short_delay_r                <= 1'b1                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b1                                 ;
              end
              else begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= state_r                              ;
                user_wave_r                         <= user_wave_r                          ;
                clone_user_wave_r                   <= clone_user_wave_r                    ;
                compare_value_r                     <= compare_value_r                      ;
                rom_read_addr_r                     <= rom_read_addr_r                      ;
                cancel_short_delay_r                <= 1'b0                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b0                                 ;
              end
            end
            else begin
              leds_r                                <= buttons_r                            ;
              req_short_delay_r                     <= 1'b0                                 ;
              state_r                               <= LOSER_STATE1                         ;
              user_wave_r                           <= 8'h00                                ;
              clone_user_wave_r                     <= 8'h00                                ;
              compare_value_r                       <= rom_arr[rom_read_addr_r]             ;
              rom_read_addr_r                       <= 8'h00                                ;
              cancel_short_delay_r                  <= 1'b0                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b0                                 ;
            end
          end
          else begin
            if (long_delay_done_r == 1'b0) begin
              if (next_wave_r == 1'b1) begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= EXTRA_DELAY                          ;
                user_wave_r                         <= user_wave_r + 1'b1                   ;
                clone_user_wave_r                   <= 8'h00                                ;
                compare_value_r                     <= rom_arr[rom_read_addr_r]             ;
                rom_read_addr_r                     <= 8'h00                                ;
                cancel_short_delay_r                <= 1'b1                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b1                                 ;
              end
              else if (game_over_r == 1'b1) begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= LOSER_STATE1                         ;
                user_wave_r                         <= 8'h00                                ;
                clone_user_wave_r                   <= 8'h00                                ;
                compare_value_r                     <= compare_value_r                      ;
                rom_read_addr_r                     <= 8'h00                                ;
                cancel_short_delay_r                <= 1'b1                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b1                                 ;
              end
              else begin
                leds_r                              <= buttons_r                            ;
                req_short_delay_r                   <= 1'b0                                 ;
                state_r                             <= state_r                              ;
                user_wave_r                         <= user_wave_r                          ;
                clone_user_wave_r                   <= clone_user_wave_r                    ;
                compare_value_r                     <= compare_value_r                      ;
                rom_read_addr_r                     <= rom_read_addr_r                      ;
                cancel_short_delay_r                <= 1'b0                                 ;
                req_long_delay_r                    <= 1'b0                                 ;
                cancel_long_delay_r                 <= 1'b0                                 ;
              end
            end
            else begin
              leds_r                                <= 4'hF                                 ;
              req_short_delay_r                     <= 1'b0                                 ;
              state_r                               <= LOSER_STATE1                         ;
              user_wave_r                           <= 8'h00                                ;
              clone_user_wave_r                     <= 8'h00                                ;
              compare_value_r                       <= rom_arr[rom_read_addr_r]             ;
              rom_read_addr_r                       <= 8'h00                                ;
              cancel_short_delay_r                  <= 1'b0                                 ;
              req_long_delay_r                      <= 1'b0                                 ;
              cancel_long_delay_r                   <= 1'b1                                 ;
            end
          end
        end
        EXTRA_DELAY: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= buttons_r                            ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= EXTRA_DELAY                          ;
            user_wave_r                             <= user_wave_r                          ;
            clone_user_wave_r                       <= clone_user_wave_r                    ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= rom_read_addr_r                      ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
          else begin
            leds_r                                  <= buttons_r                            ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= LIGHT_THE_LEDS                       ;
            user_wave_r                             <= user_wave_r                          ;
            clone_user_wave_r                       <= clone_user_wave_r                    ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= rom_read_addr_r                      ;
            cancel_short_delay_r                    <= 1'b1                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
        end
        LOSER_STATE1: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= 4'hF                                 ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= LOSER_STATE1                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
          else begin
            leds_r                                  <= 4'hF                                 ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= LOSER_STATE2                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
        end
        LOSER_STATE2: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= 4'h0                                 ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= LOSER_STATE2                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
          else begin
            leds_r                                  <= 4'h0                                 ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= LOSER_STATE3                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
        end
        LOSER_STATE3: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= 4'hF                                 ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= LOSER_STATE3                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
          else begin
            leds_r                                  <= 4'hF                                 ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= LOSER_STATE4                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
        end
        LOSER_STATE4: begin
          if (short_delay_done_r == 1'b0) begin
            leds_r                                  <= 4'h0                                 ;
            req_short_delay_r                       <= 1'b1                                 ;
            state_r                                 <= LOSER_STATE4                         ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b0                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
          else begin
            leds_r                                  <= 4'h0                                 ;
            req_short_delay_r                       <= 1'b0                                 ;
            state_r                                 <= LIGHT_THE_LEDS                       ;
            user_wave_r                             <= 8'h00                                ;
            clone_user_wave_r                       <= 8'h00                                ;
            compare_value_r                         <= rom_arr[rom_read_addr_r]             ;
            rom_read_addr_r                         <= 8'h00                                ;
            cancel_short_delay_r                    <= 1'b1                                 ;
            req_long_delay_r                        <= 1'b0                                 ;
            cancel_long_delay_r                     <= 1'b1                                 ;
          end
        end
      endcase
    end
    else begin
      leds_r                                        <= 4'h0                                 ;
      req_short_delay_r                             <= 1'b0                                 ;
      state_r                                       <= LIGHT_THE_LEDS                       ;
      user_wave_r                                   <= 8'h00                                ;
      clone_user_wave_r                             <= 8'h00                                ;
      compare_value_r                               <= rom_arr[rom_read_addr_r]             ;
      rom_read_addr_r                               <= 8'h00                                ;
      cancel_short_delay_r                          <= 1'b0                                 ;
      req_long_delay_r                              <= 1'b0                                 ;
      cancel_long_delay_r                           <= 1'b0                                 ;
    end
  end
end

assign OUT_LEDS                                     = leds_r                                ;

Randomizer RandomLED
(
  .IN_CLOCK             (IN_CLOCK)                                                          ,
  .IN_RESET_N           (IN_RESET_N)                                                        ,
  .IN_START             (~start_the_game_r)                                                 ,
  .OUT_RESULT           (randomizer_w)                                                      
);

DelayHandler Short_DelayHandler
(
  .IN_CLOCK             (IN_CLOCK)                                                          ,
  .IN_RESET_N           (IN_RESET_N)                                                        ,
  .IN_START             (req_short_delay_r)                                                 ,
  .IN_CANCEL            (cancel_short_delay_r)                                              ,
  .IN_COUNTER_VAL       (SHORT_COUNTER_VALUE)                                               ,
  .OUT_IRQ              (short_delay_done_w)                                                
);

DelayHandler Long_DelayHandler
(
  .IN_CLOCK             (IN_CLOCK)                                                          ,
  .IN_RESET_N           (IN_RESET_N)                                                        ,
  .IN_START             (req_long_delay_r)                                                  ,
  .IN_CANCEL            (cancel_long_delay_r | next_wave_r)                                 ,
  .IN_COUNTER_VAL       (LONG_COUNTER_VALUE)                                                ,
  .OUT_IRQ              (long_delay_done_w)                                                 
);

UserInputHandler UIH
(
  .IN_CLOCK             (IN_CLOCK)                                                          ,
  .IN_RESET_N           (IN_RESET_N)                                                        ,
  .IN_BUTTONS           (button_pressed_r)                                                  ,
  .IN_COMP              (compare_value_r)                                                   ,
  .IN_CHECK             (~long_delay_done_r)                                                ,
  .OUT_SUCCESS          (next_wave_w)                                                       ,
  .OUT_FAILED           (game_over_w)                                                       
);

SegmentDriver7x4 SevenSegmentDriver
(
  .IN_CLOCK             (IN_CLOCK)                                                          ,
  .IN_RESET_N           (IN_RESET_N)                                                        ,
  .IN_SCORE             (user_wave_r)                                                       ,
  .OUT_DIGITS_ENABLE    (OUT_7SEG_DIGITS)                                                   ,
  .OUT_DATA_BUS         (OUT_7SEG_DATAS)                                                    
);

endmodule
