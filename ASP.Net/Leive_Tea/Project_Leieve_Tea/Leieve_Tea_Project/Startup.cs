using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Leieve_Tea_Project.Startup))]
namespace Leieve_Tea_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
