package consoleBot;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Set;

import static consoleBot.ConnectDB.conn;

public class MyBot {

    HashMap<String, String> knowledge;

    public MyBot() throws Exception {
        knowledge = select();
    }

    public void answer(String question) throws Exception {
        Set<String> keys = knowledge.keySet();
        for (String key : keys) {
            String lowerKey = key.toLowerCase();
            String lowerQuestion = question.toLowerCase();
            if (lowerKey.contains(lowerQuestion) || lowerQuestion.contains(lowerKey)) {
                System.out.println("Bot: " + knowledge.get(key));
                return;
            } else if (question.equalsIgnoreCase("Stop it")) {
                return;
            }
        }
        trainMe(question);
    }

    public void trainMe(String question) throws Exception {
        System.out.println("Bot: Sorry, Im dumb! How should I reply?");
        System.out.print("User suggestion: ");
        Scanner sc = new Scanner(System.in);
        String userInput = sc.nextLine();
        post(question, userInput);
        knowledge = select();
    }
}