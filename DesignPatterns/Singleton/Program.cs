// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, Basic singletons!");

public sealed class BasicSingleton
{
    private static BasicSingleton? sharedInstance = null;

    // 1. Hide the constructor.
    private BasicSingleton()
    {
        // 2. Lock the allocation inside of private ctor.
        sharedInstance = new BasicSingleton();
    }

    // 3. Open an API for the Signeton getter.
    public static BasicSingleton Instance
    {
        get
        {
            // 4. The allocation control manifestation goes here:
            if (sharedInstance == null)
            {
                sharedInstance = new BasicSingleton();
            }
            return sharedInstance;
        }
    }
}

public sealed class ThreadSafeBasicSingleton
{
    private static object locker = new object();
    private static ThreadSafeBasicSingleton? sharedInstance = null;

    // 1. Hide the constructor.
    private ThreadSafeBasicSingleton()
    {
        // 2. Lock the allocation inside of private ctor.
        sharedInstance = new ThreadSafeBasicSingleton();
    }

    // 3. Open an API for the Signeton getter.
    public static ThreadSafeBasicSingleton Instance
    {
        get
        {
            // 5. Process one thread at the time.
            lock (locker)
            {
                // 4. The allocation control manifestation goes here:
                if (sharedInstance == null)
                {
                    sharedInstance = new ThreadSafeBasicSingleton();
                }
                return sharedInstance;
            }
        }
    }
}

public class RepositorySingleton
{
    private object locker = new Object();
    private static Dictionary<string, RepositorySingleton> sharedRepository = new();

    // 1. Hide the constructor.
    private RepositorySingleton()
    {
        // 2. Lock the allocation inside of private ctor.
        // 7. Allocate (this) in shared repository.
        Register((this.GetType().Name, this));
    }

    // 8. Introduce the registry API.
    protected void Register(
        (string Key, RepositorySingleton Value) entry)
    {
        // 9. Lets control the threads here as well.
        lock (locker)
        {
            if (!sharedRepository.ContainsKey(entry.Key))
            {
                sharedRepository.Add(entry.Key, entry.Value);
            }
        }
    }

    public static RepositorySingleton GetInstance(string key)
        => sharedRepository[key];
}