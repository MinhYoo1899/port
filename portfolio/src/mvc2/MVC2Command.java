package mvc2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface  MVC2Command {
	void execute(HttpServletRequest request, HttpServletResponse response );
}
