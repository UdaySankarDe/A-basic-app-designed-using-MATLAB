
classdef TicTacToe < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                 matlab.ui.Figure
        EditField                matlab.ui.control.EditField
        NewGameButton            matlab.ui.control.Button
        Button_9                 matlab.ui.control.Button
        Button_8                 matlab.ui.control.Button
        Button_7                 matlab.ui.control.Button
        Button_4                 matlab.ui.control.Button
        Button_5                 matlab.ui.control.Button
        Button_6                 matlab.ui.control.Button
        Button_3                 matlab.ui.control.Button
        Button_2                 matlab.ui.control.Button
        Button                   matlab.ui.control.Button
        WelcometoTicTacToeLabel  matlab.ui.control.Label
    end

    properties (Access = public)
        pl_move % 1 for player 1, 2 for player 2
        mat
    end
    
    methods (Access = public)
        
        function Calculate(app,m)
            %Horizontal
            if (m(1,1) == m(1,2)) && (m(1,2) == m(1,3)) && (m(1,3) ~= -1)
                result = m(1,1);
            elseif (m(2,1) == m(2,2)) && (m(2,2) == m(2,3)) && (m(2,2) ~= -1)
                result = m(2,2);   
            elseif (m(3,1) == m(3,2)) && (m(3,2) == m(3,3)) && (m(3,3) ~= -1)
                result = m(3,3);
             %Vertical
            elseif (m(1,1) == m(2,1)) && (m(2,1) == m(3,1)) && (m(3,1) ~= -1)
                result = m(1,1);
            elseif (m(1,2) == m(2,2)) && (m(2,2) == m(3,2)) && (m(2,2) ~= -1)
                result = m(2,2);
            elseif (m(1,3) == m(2,3)) && (m(2,3) == m(3,3)) && (m(3,3) ~= -1)
                result = m(3,3);
             %Diagonal
             elseif (m(1,1) == m(2,2)) && (m(2,2) == m(3,3)) && (m(2,2) ~= -1)
                result = m(2,2);
             elseif (m(1,3) == m(2,2)) && (m(2,2) == m(3,1)) && (m(2,2) ~= -1)
                result = m(2,2);
             elseif ~ismember(m,-1)
                 result = -1;
            else
                result = 0;
            end
            if result == 1
                app.WelcometoTicTacToeLabel.Text = 'Player 1 Won';
                startupFcn(app)
            elseif result == 2
                app.WelcometoTicTacToeLabel.Text = 'Player 2 Won';
                startupFcn(app)
            elseif result == -1
                app.WelcometoTicTacToeLabel.Text = 'Game Draw * Play Again';
                startupFcn(app)
            end
        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.Button.Enable = 'off';
            app.Button_2.Enable = 'off';
            app.Button_3.Enable = 'off';
            app.Button_6.Enable = 'off';
            app.Button_5.Enable = 'off';
            app.Button_4.Enable = 'off';
            app.Button_7.Enable = 'off';
            app.Button_8.Enable = 'off';
            app.Button_9.Enable = 'off';
        end

        % Button pushed function: NewGameButton
        function NewGameButtonPushed(app, event)
            app.Button.Enable = 'on';
            app.Button_2.Enable = 'on';
            app.Button_3.Enable = 'on';
            app.Button_6.Enable = 'on';
            app.Button_5.Enable = 'on';
            app.Button_4.Enable = 'on';
            app.Button_7.Enable = 'on';
            app.Button_8.Enable = 'on';
            app.Button_9.Enable = 'on';
            app.WelcometoTicTacToeLabel.Text= 'Turn of player 1';
            app.pl_move=1;
            app.mat = -1*ones(3,3);
            app.Button.Text = ' ';
            app.Button_2.Text = ' ';
            app.Button_3.Text = ' ';
            app.Button_4.Text = ' ';
            app.Button_5.Text = ' ';
            app.Button_6.Text = ' ';
            app.Button_7.Text = ' ';
            app.Button_8.Text = ' ';
            app.Button_9.Text = ' ';
        end

        % Button pushed function: Button
        function ButtonPushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button.Text = 'O';
                app.mat(1,1) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button.Text = 'X';
                app.mat(1,1) = 2;
            end 
            app.Button.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_2
        function Button_2Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_2.Text = 'O';
                app.mat(1,2) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_2.Text = 'X';
                app.mat(1,2) = 2;
            end
            app.Button_2.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_3
        function Button_3Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_3.Text = 'O';
                app.mat(1,3) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_3.Text = 'X';
                app.mat(1,3) = 2;
            end
            app.Button_3.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_6
        function Button_6Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_6.Text = 'O';
                app.mat(2,1) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_6.Text = 'X';
                app.mat(2,1) = 2;
            end
            app.Button_6.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_5.Text = 'O';
                app.mat(2,2) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_5.Text = 'X';
                app.mat(2,2) = 2;
            end
            app.Button_5.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_4
        function Button_4Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_4.Text = 'O';
                app.mat(2,3) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_4.Text = 'X';
                app.mat(2,3) = 2;
            end
            app.Button_4.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_7
        function Button_7Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_7.Text = 'O';
                app.mat(3,1) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_7.Text = 'X';
                app.mat(3,1) = 2;
            end
            app.Button_7.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_8
        function Button_8Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_8.Text = 'O';
                app.mat(3,2) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_8.Text = 'X';
                app.mat(3,2) = 2;
            end
            app.Button_8.Enable = 'off';
            Calculate(app,app.mat);
        end

        % Button pushed function: Button_9
        function Button_9Pushed(app, event)
            if app.pl_move == 1
                app.WelcometoTicTacToeLabel.Text = 'Now turn of player 2';
                app.pl_move = 2;
                app.Button_9.Text = 'O';
                app.mat(3,3) = 1;
            else  
                app.WelcometoTicTacToeLabel.Text = 'Turn of player 1';
                app.pl_move = 1;
                app.Button_9.Text = 'X';
                app.mat(3,3) = 2;
            end
            app.Button_9.Enable = 'off';
            Calculate(app,app.mat);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0 0 1];
            app.UIFigure.Position = [100 100 472 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create WelcometoTicTacToeLabel
            app.WelcometoTicTacToeLabel = uilabel(app.UIFigure);
            app.WelcometoTicTacToeLabel.BackgroundColor = [0 1 1];
            app.WelcometoTicTacToeLabel.HorizontalAlignment = 'center';
            app.WelcometoTicTacToeLabel.FontName = 'Verdana';
            app.WelcometoTicTacToeLabel.FontSize = 18;
            app.WelcometoTicTacToeLabel.FontWeight = 'bold';
            app.WelcometoTicTacToeLabel.Position = [87 423 303 24];
            app.WelcometoTicTacToeLabel.Text = 'Welcome to Tic Tac Toe';

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @ButtonPushed, true);
            app.Button.Position = [42 338 88 49];
            app.Button.Text = '';

            % Create Button_2
            app.Button_2 = uibutton(app.UIFigure, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
            app.Button_2.Position = [187 338 92 49];
            app.Button_2.Text = '';

            % Create Button_3
            app.Button_3 = uibutton(app.UIFigure, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.Button_3.Position = [331 338 88 49];
            app.Button_3.Text = '';

            % Create Button_6
            app.Button_6 = uibutton(app.UIFigure, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Button_6Pushed, true);
            app.Button_6.Position = [42 242 88 48];
            app.Button_6.Text = '';

            % Create Button_5
            app.Button_5 = uibutton(app.UIFigure, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.Position = [187 242 92 48];
            app.Button_5.Text = '';

            % Create Button_4
            app.Button_4 = uibutton(app.UIFigure, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_4Pushed, true);
            app.Button_4.Position = [331 242 88 48];
            app.Button_4.Text = '';

            % Create Button_7
            app.Button_7 = uibutton(app.UIFigure, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @Button_7Pushed, true);
            app.Button_7.Position = [42 140 88 47];
            app.Button_7.Text = '';

            % Create Button_8
            app.Button_8 = uibutton(app.UIFigure, 'push');
            app.Button_8.ButtonPushedFcn = createCallbackFcn(app, @Button_8Pushed, true);
            app.Button_8.Position = [187 140 92 47];
            app.Button_8.Text = '';

            % Create Button_9
            app.Button_9 = uibutton(app.UIFigure, 'push');
            app.Button_9.ButtonPushedFcn = createCallbackFcn(app, @Button_9Pushed, true);
            app.Button_9.Position = [319 140 100 47];
            app.Button_9.Text = '';

            % Create NewGameButton
            app.NewGameButton = uibutton(app.UIFigure, 'push');
            app.NewGameButton.ButtonPushedFcn = createCallbackFcn(app, @NewGameButtonPushed, true);
            app.NewGameButton.BackgroundColor = [1 1 0];
            app.NewGameButton.FontName = 'Comic Sans MS';
            app.NewGameButton.FontSize = 24;
            app.NewGameButton.FontWeight = 'bold';
            app.NewGameButton.Position = [171 75 136 39];
            app.NewGameButton.Text = 'New Game';

            % Create EditField
            app.EditField = uieditfield(app.UIFigure, 'text');
            app.EditField.HorizontalAlignment = 'center';
            app.EditField.FontName = 'Terminal';
            app.EditField.FontSize = 18;
            app.EditField.FontWeight = 'bold';
            app.EditField.BackgroundColor = [1 0.0745 0.651];
            app.EditField.Position = [310 23 151 33];
            app.EditField.Value = 'Uday Sankar De';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = TicTacToe

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end
