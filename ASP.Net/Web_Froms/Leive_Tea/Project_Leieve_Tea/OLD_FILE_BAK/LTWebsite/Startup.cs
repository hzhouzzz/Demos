using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LTWebsite.Startup))]
namespace LTWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
