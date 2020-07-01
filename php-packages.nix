{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "geoffroy-aubry/errorhandler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "geoffroy-aubry-errorhandler-v1.1.5";
        src = fetchurl {
          url = https://api.github.com/repos/geoffroy-aubry/ErrorHandler/zipball/v1.1.5;
          sha256 = "1l64h7rkai3by265n455sclnzsjf9rvryjc45i5b2hvzh2sm2dnx";
        };
      };
    };
    "geoffroy-aubry/helpers" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "geoffroy-aubry-helpers-v1.3.1";
        src = fetchurl {
          url = https://api.github.com/repos/geoffroy-aubry/Helpers/zipball/v1.3.1;
          sha256 = "0vw7f99iinvf0q53w5spp7z2spg0s14gaim4qclp2pqmdj3cs7vm";
        };
      };
    };
    "pimple/pimple" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pimple-pimple-v1.0.2";
        src = fetchurl {
          url = https://api.github.com/repos/fabpot/Pimple/zipball/v1.0.2;
          sha256 = "17p74z4jk8mkyrvpf9jp0zddfsd1h5p0wlrzxns17xq38lbr4x2w";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-1.0.0";
        src = fetchurl {
          url = https://github.com/php-fig/log/archive/1.0.0.zip;
          sha256 = "183v364zalmnbdp047fd40nii1a5jkh95v8zdasisnyy2kd2q8fw";
        };
      };
    };
    "silex/silex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "silex-silex-v1.1.0";
        src = fetchurl {
          url = https://api.github.com/repos/fabpot/Silex/zipball/v1.1.0;
          sha256 = "0zz80ya3skv9mxghhmsqp0a7z208b8rlfr0xhzcph8waqm5qad3f";
        };
      };
    };
    "symfony/config" = {
      targetDir = "Symfony/Component/Config";
      src = composerEnv.buildZipPackage {
        name = "symfony-config-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Config/zipball/v2.3.3;
          sha256 = "1jrh654s275q44lb2wd0hvdrv8fnsf28zb32r5axxki78c9z54s0";
        };
      };
    };
    "symfony/console" = {
      targetDir = "Symfony/Component/Console";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Console/zipball/v2.3.3;
          sha256 = "09vgcf9bhdxv93zrwsmiq6favsldmb3w5b65yk2ncx95i5clgffr";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "Symfony/Component/Debug";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Debug/zipball/v2.3.3;
          sha256 = "1hcw10kl29i51mg1rrb2vrbz41p42gbffizzjcn2g4qzwnsb7sab";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "Symfony/Component/EventDispatcher";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/EventDispatcher/zipball/v2.3.3;
          sha256 = "0rgsfyfswh9x00rk0389bwga5dqfsvvcalq10rhrh3xwxsqi49ya";
        };
      };
    };
    "symfony/filesystem" = {
      targetDir = "Symfony/Component/Filesystem";
      src = composerEnv.buildZipPackage {
        name = "symfony-filesystem-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Filesystem/zipball/v2.3.3;
          sha256 = "1dszyfv52npwyaflg7apsd2b7794aiqsa1p8sakm0yd8xlf53d2x";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "Symfony/Component/Finder";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Finder/zipball/v2.3.3;
          sha256 = "04pknxac3ziyhm9l24cq4mryhnwdnc0gr5wnxzw89zzf8kzrasd2";
        };
      };
    };
    "symfony/form" = {
      targetDir = "Symfony/Component/Form";
      src = composerEnv.buildZipPackage {
        name = "symfony-form-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Form/zipball/v2.3.3;
          sha256 = "12vdss5x0gjksdii4nkkrqz6r4chnd501hh8hm5drpw5msmqp42i";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "Symfony/Component/HttpFoundation";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/HttpFoundation/zipball/v2.3.3;
          sha256 = "1qs1r4mj65my42nnsp0l2gs79fv5p9nj6bswpgbz4girk63yl584";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "Symfony/Component/HttpKernel";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/HttpKernel/zipball/v2.3.3;
          sha256 = "1rs5yxwhdlya1xlsdlj9b3pc7f89knwarsgarygpyyric23w1ykc";
        };
      };
    };
    "symfony/icu" = {
      targetDir = "Symfony/Component/Icu";
      src = composerEnv.buildZipPackage {
        name = "symfony-icu-v1.0.0";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Icu/zipball/v1.0.0;
          sha256 = "1mmxhizajiry5f16fsxwxqsr4mz9p7prigbr6cml00wc3sr159zf";
        };
      };
    };
    "symfony/intl" = {
      targetDir = "Symfony/Component/Intl";
      src = composerEnv.buildZipPackage {
        name = "symfony-intl-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Intl/zipball/v2.3.3;
          sha256 = "1h3ndk0gjq62kzwzqs8k9syqhghdcxxafi9v6q0kgi3dsxkmpcxg";
        };
      };
    };
    "symfony/options-resolver" = {
      targetDir = "Symfony/Component/OptionsResolver";
      src = composerEnv.buildZipPackage {
        name = "symfony-options-resolver-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/OptionsResolver/zipball/v2.3.3;
          sha256 = "0qwdz69p9mbplg0j0r9pchpc05c4vkzpq59dgsijh67c0vh5chzk";
        };
      };
    };
    "symfony/property-access" = {
      targetDir = "Symfony/Component/PropertyAccess";
      src = composerEnv.buildZipPackage {
        name = "symfony-property-access-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/PropertyAccess/zipball/v2.3.3;
          sha256 = "0fc0zn4jlicvvwc1lcwi8cqs0897z1wyxixwk9j31k6cgdjs09g6";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "Symfony/Component/Routing";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Routing/zipball/v2.3.3;
          sha256 = "0zx390f7iv54bc71xb11lab5b1hzrglhlxnb703lizmvzayx4930";
        };
      };
    };
    "symfony/security" = {
      targetDir = "Symfony/Component/Security";
      src = composerEnv.buildZipPackage {
        name = "symfony-security-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Security/zipball/v2.3.3;
          sha256 = "0pr3z30q7rdxzs3f7zxi08d7j0snchi7imyjxkd3px44icrzdj81";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "Symfony/Component/Translation";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Translation/zipball/v2.3.3;
          sha256 = "0lasi9g3hwpckkki7sqc8fv59f4c72b5p3l6nq18p023i0jqqzg5";
        };
      };
    };
    "symfony/twig-bridge" = {
      targetDir = "Symfony/Bridge/Twig";
      src = composerEnv.buildZipPackage {
        name = "symfony-twig-bridge-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/TwigBridge/zipball/v2.3.3;
          sha256 = "0j35lgc700v23iwqvrbr8hhq87ifv9pxrhbv3qs59nc6k7dxfrim";
        };
      };
    };
    "symfony/validator" = {
      targetDir = "Symfony/Component/Validator";
      src = composerEnv.buildZipPackage {
        name = "symfony-validator-v2.3.3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/Validator/zipball/v2.3.3;
          sha256 = "0bhmi0b2bz5shs15hn82007n69nn5hcs1cg54bw5gdnvc4a0fc6i";
        };
      };
    };
    "twig/extensions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-extensions-v1.0.0";
        src = fetchurl {
          url = https://api.github.com/repos/fabpot/Twig-extensions/zipball/v1.0.0;
          sha256 = "1n0r9ms967mcy5j4mk0c4im8krm6bfs0k299i1ynazw2h2h8pj3f";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-v1.13.2";
        src = fetchurl {
          url = https://api.github.com/repos/fabpot/Twig/zipball/v1.13.2;
          sha256 = "1c8xyw6lml5ip2f8f5p3dv8y89m414kmsjf1x2ayxvxx6n6yvckr";
        };
      };
    };
    "twitter/bootstrap" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twitter-bootstrap-v2.3.2";
        src = fetchurl {
          url = https://api.github.com/repos/twitter/bootstrap/zipball/v2.3.2;
          sha256 = "1djd1j854b7dca8lps9g4j8q8qp287psqcbj3rvs2cpcqv96y9sm";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "himedia-quizzes";
  src = ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "GPL-3.0+";
  };
}