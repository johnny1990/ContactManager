using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ContactManagerApplication.Startup))]
namespace ContactManagerApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
