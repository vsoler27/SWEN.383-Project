import spark.Request;
import spark.Response;
import spark.Route;
import spark.TemplateEngine;

import java.net.HttpURLConnection;
import java.util.logging.Logger;

public class PostProfessorRoute implements Route {

    // TODO: create post version of this class so that admin can interact with and
    // redirects back to this class (will then rebuild admin class table with this
    // new info)

    private static final Logger LOGGER = Logger.getLogger(PostProfessorRoute.class.getName());

    private UserManager manager;

    public PostProfessorRoute(UserManager manager, TemplateEngine engine) {
        this.manager = manager;
        LOGGER.config("PostProfessorRoute Created");
    }

    @Override
    public Object handle(Request request, Response response) {
        LOGGER.info("POST /professor");

        String classCode = request.queryParams("classButton");

        request.session().attribute("classCode", classCode);
        LOGGER.info("classCode: " + classCode);

        response.redirect(WebServer.LECTURE, HttpURLConnection.HTTP_MOVED_PERM);




        return null;
    }

}
