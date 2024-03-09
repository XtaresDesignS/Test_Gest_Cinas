<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">

    <xsl:choose>
      <xsl:when test="data/user/perfil = 'Admin'">
        <img class="Avatar" width="40px" heigth="40px" style=" border-radius:50%;" src="{data/user/imagem}" />

        <a
            class="dropdown-toggle"
            href="#"
            id="dropdownId"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false">
          <xsl:value-of select="data/user/nome"></xsl:value-of>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="data/user/perfil = 'Collector'">
            <img class="Avatar" width="40px" heigth="40px" style=" border-radius:50%;" src="{data/user/imagem}" />
            <a
                class="dropdown-toggle"
                href="#"
                id="dropdownId"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false">
              <xsl:value-of select="data/user/nome"></xsl:value-of>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <xsl:choose>
              <xsl:when test="data/user/perfil = 'Guest'">
                <img class="Avatar" width="40px" heigth="40px" style=" border-radius:50%;" src="{data/user/imagem}" />

                <a
                    class="dropdown-toggle"
                    href="#"
                    id="dropdownId"
                    data-toggle="dropdown"
                    aria-haspopup="true"
                    aria-expanded="false">
                  <xsl:value-of select="data/user/nome"></xsl:value-of>
                </a>
              </xsl:when>
              <xsl:otherwise>
                <svg
                      viewBox="0 0 32 32"
                      id="user"
                      fill="currentColor"
                      height="16"
                      width="16"
                      xmlns="http://www.w3.org/2000/svg"
                      class="input-icon">
                  <path
                      d="M16 14a6 6 0 1 0-6-6A6 6 0 0 0 16 14zM16 4a4 4 0 1 1-4 4A4 4 0 0 1 16 4zM16 16A10 10 0 0 0 6 26v3a1 1 0 0 0 2 0V26a8 8 0 0 1 16 0v3a1 1 0 0 0 2 0V26A10 10 0 0 0 16 16z">
                  </path>

                </svg>
                <a
                    class="dropdown-toggle"
                    href="#"
                    id="dropdownId"
                    data-toggle="dropdown"
                    aria-haspopup="true"
                    aria-expanded="false">
                  Área de utilizador
                </a>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>




  </xsl:template>
</xsl:stylesheet>
