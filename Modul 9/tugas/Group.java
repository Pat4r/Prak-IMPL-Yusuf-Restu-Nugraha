import java.util.ArrayList;
import java.util.List;

public class Group {
    public List getUsersSortedByMostRecentlyRegistered() {
    List users = new ArrayList();
    if (!userDirectoryExists())
    return users;
    addFoundUsersTo(users);
    sortByMostRecentlyRegistered(users);
    return users;
    }