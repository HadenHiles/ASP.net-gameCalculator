using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(gameCalculator.Startup))]
namespace gameCalculator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
